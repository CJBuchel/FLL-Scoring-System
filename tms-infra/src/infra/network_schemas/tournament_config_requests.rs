use schemars::JsonSchema;
use serde::{Deserialize, Serialize};

use crate::infra::DataSchemeExtensions;


#[derive(Serialize, Deserialize, Debug, JsonSchema)]
pub struct TournamentConfigSetNameRequest {
  pub name: String,
}

impl Default for TournamentConfigSetNameRequest {
  fn default() -> Self {
    Self {
      name: "".to_string(),
    }
  }
}

#[derive(Serialize, Deserialize, Debug, JsonSchema)]
pub struct TournamentConfigSetTimerLengthRequest {
  pub timer_length: u32,
}

impl Default for TournamentConfigSetTimerLengthRequest {
  fn default() -> Self {
    Self {
      timer_length: 0,
    }
  }
}

#[derive(Serialize, Deserialize, Debug, JsonSchema)]
pub struct TournamentConfigSetEndgameTimerLengthRequest {
  pub timer_length: u32,
}

impl Default for TournamentConfigSetEndgameTimerLengthRequest {
  fn default() -> Self {
    Self {
      timer_length: 0,
    }
  }
}

#[derive(Serialize, Deserialize, Debug, JsonSchema)]
pub struct TournamentConfigSetBackupIntervalRequest {
  pub interval: u32,
}

impl Default for TournamentConfigSetBackupIntervalRequest {
  fn default() -> Self {
    Self {
      interval: 0,
    }
  }
}

#[derive(Serialize, Deserialize, Debug, JsonSchema)]
pub struct TournamentConfigSetRetainBackupsRequest {
  pub retain_backups: u32,
}

impl Default for TournamentConfigSetRetainBackupsRequest {
  fn default() -> Self {
    Self {
      retain_backups: 0,
    }
  }
}

#[derive(Serialize, Deserialize, Debug, JsonSchema)]
pub struct TournamentConfigSetSeasonRequest {
  pub season: String,
}

impl Default for TournamentConfigSetSeasonRequest {
  fn default() -> Self {
    Self {
      season: "".to_string(),
    }
  }
}


impl DataSchemeExtensions for TournamentConfigSetNameRequest {}
impl DataSchemeExtensions for TournamentConfigSetSeasonRequest {}
impl DataSchemeExtensions for TournamentConfigSetBackupIntervalRequest {}
impl DataSchemeExtensions for TournamentConfigSetRetainBackupsRequest {}
impl DataSchemeExtensions for TournamentConfigSetTimerLengthRequest {}
impl DataSchemeExtensions for TournamentConfigSetEndgameTimerLengthRequest {}