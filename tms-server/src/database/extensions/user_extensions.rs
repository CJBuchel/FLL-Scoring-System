use echo_tree_infra::EchoTreeRole;
use tms_infra::{DataSchemeExtensions, User};
pub use echo_tree_rs::core::*;
use uuid::Uuid;

use crate::database::Database;

#[async_trait::async_trait]
pub trait UserExtensions {
  async fn get_user(&self, user_id: String) -> Option<User>;
  async fn get_user_by_username(&self, username: String) -> Option<(String, User)>;
  async fn insert_user(&self, user: User) -> Result<(), String>;
  async fn get_user_roles(&self, user_id: String) -> Vec<EchoTreeRole>;
}


#[async_trait::async_trait]
impl UserExtensions for Database {
  async fn get_user(&self, user_id: String) -> Option<User> {
    let tree = self.inner.read().await.get_tree(":users".to_string()).await;
    let user = tree.get(&user_id).cloned();

    match user {
      Some(user) => {
        Some(User::from_json(&user))
      }
      None => None,
    }
  }

  async fn get_user_by_username(&self, username: String) -> Option<(String, User)> {
    let tree = self.inner.read().await.get_tree(":users".to_string()).await;
    let user = tree.iter().find_map(|(id, user)| {
      let user = User::from_json(user);
      if user.username == username {
        Some((id.clone(), user))
      } else {
        None
      }
    });

    match user {
      Some((id, user)) => {
        Some((id, user))
      }
      None => None,
    }
  }

  async fn insert_user(&self, user: User) -> Result<(), String> {
    // check if user already exists
    let existing_user = self.get_user_by_username(user.username.clone()).await;

    match existing_user {
      Some((user_id, user)) => {
        log::warn!("User already exists: {}, overwriting with insert...", user_id);
        self.inner.write().await.insert_entry(":users".to_string(), Uuid::new_v4().to_string(), user.to_json()).await;
        return Ok(());
      },
      None => {
        self.inner.write().await.insert_entry(":users".to_string(), Uuid::new_v4().to_string(), user.to_json()).await;
        return Ok(());
      },
    }
  }

  async fn get_user_roles(&self, user_id: String) -> Vec<EchoTreeRole> {
    let user = self.get_user(user_id.clone()).await;

    match user {
      Some(user) => {
        let roles: Vec<EchoTreeRole> = user.roles.iter().filter_map(|role| {
          let role = futures::executor::block_on(async {
            self.inner.read().await.get_role_manager().await.get_role(role.clone())
          });
          role
        }).collect();

        roles
      }
      None => vec![],
    }
  }
}