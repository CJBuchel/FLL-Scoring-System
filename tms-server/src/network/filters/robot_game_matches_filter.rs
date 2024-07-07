use warp::Filter;
use crate::{database::SharedDatabase, network::{robot_game_matches_load_matches_handler, robot_game_matches_unload_matches_handler, ClientMap}, services::SharedServices};

use super::{header_filters::{auth_token_filter::check_auth_token_filter, role_permission_filter::role_permission_filter}, with_services};


pub fn robot_game_matches_filter(clients: ClientMap, db: SharedDatabase, services: SharedServices) -> impl warp::Filter<Extract = impl warp::Reply, Error = warp::Rejection> + Clone {
  let robot_game_matches_path = warp::path("robot_game").and(warp::path("matches"));

  let load_matches = robot_game_matches_path.and(warp::path("load_matches"))
    .and(warp::post())
    .and(warp::body::json())
    .and(with_services(services.clone()))
    .and(check_auth_token_filter(clients.clone()))
    .and(role_permission_filter(clients.clone(), db.clone(), vec!["admin", "head_referee"]))
    .and_then(robot_game_matches_load_matches_handler);

  let unload_matches = robot_game_matches_path.and(warp::path("unload_matches"))
    .and(warp::post())
    .and(with_services(services.clone()))
    .and(check_auth_token_filter(clients.clone()))
    .and(role_permission_filter(clients.clone(), db.clone(), vec!["admin", "head_referee"]))
    .and_then(robot_game_matches_unload_matches_handler);

  load_matches.or(unload_matches)
}