use echo_tree_rs::core::TreeManager;
use tms_infra::{DataSchemeExtensions, TournamentConfig};

use super::Database;

#[async_trait::async_trait]
pub trait BackupService {
  fn start_backup_service(&mut self);
  async fn stop_backup_service(&mut self);
}

#[async_trait::async_trait]
impl BackupService for Database {
  fn start_backup_service(&mut self) {
    if self.backup_service_thread.is_some() {
      log::warn!("Backup service already running");
      return;
    }

    let mut stop_signal_receiver = self.stop_signal_sender.subscribe();
    let inner = self.inner.clone();

    self.backup_service_thread = Some(tokio::spawn(async move {
      loop {
        tokio::select! {
          _ = stop_signal_receiver.changed() => {
            log::info!("Backup service stopped");
            break;
          }
          _ =  async {
            // backup code
            let config = inner.read().await.get_entry(":tournament:config".to_string(), "config".to_string()).await;
            match config {
              Some(config) => {
                let config = TournamentConfig::from_schema(&config);
                let interval_seconds = config.backup_interval * 60;
                let name = if config.name.is_empty() { "tms".to_string() } else { config.name };
                let backup_name = format!("{}-backup-{}_{}.kvdb.zip", name, chrono::Local::now().format("%Y-%m-%d"), chrono::Local::now().format("%H-%M-%S"));
                
                match inner.read().await.backup_db(&format!("backups/{}", backup_name)).await {
                  Ok(_) => {
                    log::info!("Backup successful: {}", backup_name);
                  },
                  Err(e) => {
                    log::error!("Backup failed: {:?}", e);
                  }
                }

                tokio::time::sleep(tokio::time::Duration::from_secs(interval_seconds as u64)).await;
              },
              None => {
                log::warn!("No backup configuration found");
                tokio::time::sleep(tokio::time::Duration::from_secs(10 * 60)).await;
              }
            }
          } => {}
        }
      }
    }));
  }

  async fn stop_backup_service(&mut self) {
    if let Some(handle) = self.backup_service_thread.take() {
      match self.stop_signal_sender.send(true) {
        Ok(_) => {
          log::info!("Backup service stopping...")
        },
        Err(e) => {
          log::error!("Error stopping backup service: {}", e)
        },
      }
      match handle.await {
        Ok(_) => {
          log::info!("Backup service stopped");
        },
        Err(e) => {
          log::error!("Failed to join backup service: {}", e);
        },
      }
    }
  }
}