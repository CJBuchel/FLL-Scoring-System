use crate::{network::client_publish::*, network::ClientMap};

use super::{AtomicRefBool, MatchService};

#[async_trait::async_trait]
pub trait ControlsSubService {
  async fn load_matches_loop_sender(is_matches_loaded: AtomicRefBool, is_ready: AtomicRefBool, loaded_matches: Vec<String>, clients: ClientMap);
  // load
  async fn load_matches(&self, game_match_numbers: Vec<String>);
  async fn unload_matches(&self);

  // ready
  async fn ready_matches(&self);
  async fn unready_matches(&self);
}

#[async_trait::async_trait]
impl ControlsSubService for MatchService {
  async fn load_matches_loop_sender(is_matches_loaded: AtomicRefBool, is_ready: AtomicRefBool, loaded_matches: Vec<String>, clients: ClientMap) {
    // tokio loop selector
    while is_matches_loaded.load(std::sync::atomic::Ordering::Relaxed) {
      let read_clients = clients.read().await;

      // if ready
      if is_ready.load(std::sync::atomic::Ordering::Relaxed) {
        read_clients.publish_ready_matches(loaded_matches.clone());
      } else {
        read_clients.publish_load_matches(loaded_matches.clone());
      }
      // delay
      tokio::time::sleep(tokio::time::Duration::from_secs(1)).await;
    }
  }

  async fn load_matches(&self, game_match_numbers: Vec<String>) {
    let is_loaded = self.is_matches_loaded.load(std::sync::atomic::Ordering::Relaxed);
    let is_ready = self.is_matches_ready.load(std::sync::atomic::Ordering::Relaxed);

    if !is_loaded && !is_ready {
      log::info!("Loading Matches: {:?}", game_match_numbers);
      self.is_matches_loaded.store(true, std::sync::atomic::Ordering::Relaxed);
      self.loaded_matches.write().await.clear();
      self.loaded_matches.write().await.extend(game_match_numbers.clone());

      // setup clones
      let is_matches_loaded = self.is_matches_loaded.clone();
      let is_matches_ready = self.is_matches_ready.clone();
      let game_matches = game_match_numbers.clone();
      let clients = self.clients.clone();

      tokio::spawn(async move {
        MatchService::load_matches_loop_sender(is_matches_loaded, is_matches_ready, game_matches, clients).await;
      });
    } else {
      log::warn!("Matches can't be loaded");
    }
  }

  async fn unload_matches(&self) {
    let is_loaded = self.is_matches_loaded.load(std::sync::atomic::Ordering::Relaxed);
    let is_ready = self.is_matches_ready.load(std::sync::atomic::Ordering::Relaxed);


    if is_loaded && !is_ready {
      log::info!("Unloading Matches");
      self.is_matches_loaded.store(false, std::sync::atomic::Ordering::Relaxed);
      self.loaded_matches.write().await.clear();

      let read_clients = self.clients.read().await;
      read_clients.publish_unload_matches();
    } else {
      log::warn!("Matches can't be unloaded");
    }
  }

  async fn ready_matches(&self) {
    // if matches are loaded and not ready
    let is_loaded = self.is_matches_loaded.load(std::sync::atomic::Ordering::Relaxed);
    let is_ready = self.is_matches_ready.load(std::sync::atomic::Ordering::Relaxed);

    if is_loaded && !is_ready {
      log::info!("Ready Matches");
      self.is_matches_ready.store(true, std::sync::atomic::Ordering::Relaxed);
      // send ready matches to clients as well (for instant update)
      let read_clients = self.clients.read().await;
      read_clients.publish_ready_matches(self.loaded_matches.read().await.clone());
    } else {
      log::warn!("Can't ready matches");
    }
  }

  async fn unready_matches(&self) {
    // if matches are loaded and ready
    let is_loaded = self.is_matches_loaded.load(std::sync::atomic::Ordering::Relaxed);
    let is_ready = self.is_matches_ready.load(std::sync::atomic::Ordering::Relaxed);

    if is_loaded && is_ready {
      log::info!("Unready Matches");
      self.is_matches_ready.store(false, std::sync::atomic::Ordering::Relaxed);
      // send unready matches to clients as well (for instant update)
      let read_clients = self.clients.read().await;
      // unready is just the loaded state yet to be ready again.
      read_clients.publish_load_matches(self.loaded_matches.read().await.clone());
    } else {
      log::warn!("Can't unready matches");
    }
  }
}
