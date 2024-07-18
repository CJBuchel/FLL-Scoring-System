// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

// Static analysis wrongly picks the IO variant, thus ignore this
// ignore_for_file: argument_type_not_assignable

import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'infra.dart';
import 'infra/database_schemas/date_time.dart';
import 'infra/database_schemas/game_match.dart';
import 'infra/database_schemas/game_table.dart';
import 'infra/database_schemas/judging_pod.dart';
import 'infra/database_schemas/judging_session.dart';
import 'infra/database_schemas/team.dart';
import 'infra/database_schemas/tournament_config.dart';
import 'infra/database_schemas/user.dart';
import 'infra/network_schemas/errors.dart';
import 'infra/network_schemas/login_requests.dart';
import 'infra/network_schemas/register_requests.dart';
import 'infra/network_schemas/robot_game_requests.dart';
import 'infra/network_schemas/socket_protocol/match_state_event.dart';
import 'infra/network_schemas/socket_protocol/match_time_event.dart';
import 'infra/network_schemas/socket_protocol/server_socket_protocol.dart';
import 'infra/network_schemas/tournament_config_requests.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

abstract class TmsRustLibApiImplPlatform extends BaseApiImpl<TmsRustLibWire> {
  TmsRustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  DataSchemeExtensions dco_decode_TraitDef_DataSchemeExtensions(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  ErrorMessage dco_decode_box_autoadd_error_message(dynamic raw);

  @protected
  GameMatch dco_decode_box_autoadd_game_match(dynamic raw);

  @protected
  GameTable dco_decode_box_autoadd_game_table(dynamic raw);

  @protected
  JudgingPod dco_decode_box_autoadd_judging_pod(dynamic raw);

  @protected
  JudgingSession dco_decode_box_autoadd_judging_session(dynamic raw);

  @protected
  LoginRequest dco_decode_box_autoadd_login_request(dynamic raw);

  @protected
  LoginResponse dco_decode_box_autoadd_login_response(dynamic raw);

  @protected
  RegisterRequest dco_decode_box_autoadd_register_request(dynamic raw);

  @protected
  RegisterResponse dco_decode_box_autoadd_register_response(dynamic raw);

  @protected
  RobotGamesLoadMatchRequest
      dco_decode_box_autoadd_robot_games_load_match_request(dynamic raw);

  @protected
  Team dco_decode_box_autoadd_team(dynamic raw);

  @protected
  TmsDate dco_decode_box_autoadd_tms_date(dynamic raw);

  @protected
  TmsDateTime dco_decode_box_autoadd_tms_date_time(dynamic raw);

  @protected
  TmsServerMatchStateEvent dco_decode_box_autoadd_tms_server_match_state_event(
      dynamic raw);

  @protected
  TmsServerMatchTimerEvent dco_decode_box_autoadd_tms_server_match_timer_event(
      dynamic raw);

  @protected
  TmsServerSocketMessage dco_decode_box_autoadd_tms_server_socket_message(
      dynamic raw);

  @protected
  TmsTime dco_decode_box_autoadd_tms_time(dynamic raw);

  @protected
  TmsTreeRole dco_decode_box_autoadd_tms_tree_role(dynamic raw);

  @protected
  TournamentConfig dco_decode_box_autoadd_tournament_config(dynamic raw);

  @protected
  TournamentConfigSetBackupIntervalRequest
      dco_decode_box_autoadd_tournament_config_set_backup_interval_request(
          dynamic raw);

  @protected
  TournamentConfigSetEndgameTimerLengthRequest
      dco_decode_box_autoadd_tournament_config_set_endgame_timer_length_request(
          dynamic raw);

  @protected
  TournamentConfigSetNameRequest
      dco_decode_box_autoadd_tournament_config_set_name_request(dynamic raw);

  @protected
  TournamentConfigSetRetainBackupsRequest
      dco_decode_box_autoadd_tournament_config_set_retain_backups_request(
          dynamic raw);

  @protected
  TournamentConfigSetSeasonRequest
      dco_decode_box_autoadd_tournament_config_set_season_request(dynamic raw);

  @protected
  TournamentConfigSetTimerLengthRequest
      dco_decode_box_autoadd_tournament_config_set_timer_length_request(
          dynamic raw);

  @protected
  int dco_decode_box_autoadd_u_32(dynamic raw);

  @protected
  User dco_decode_box_autoadd_user(dynamic raw);

  @protected
  ErrorMessage dco_decode_error_message(dynamic raw);

  @protected
  GameMatch dco_decode_game_match(dynamic raw);

  @protected
  GameMatchTable dco_decode_game_match_table(dynamic raw);

  @protected
  GameTable dco_decode_game_table(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  JudgingPod dco_decode_judging_pod(dynamic raw);

  @protected
  JudgingSession dco_decode_judging_session(dynamic raw);

  @protected
  JudgingSessionPod dco_decode_judging_session_pod(dynamic raw);

  @protected
  List<String> dco_decode_list_String(dynamic raw);

  @protected
  List<GameMatchTable> dco_decode_list_game_match_table(dynamic raw);

  @protected
  List<JudgingSessionPod> dco_decode_list_judging_session_pod(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  List<(String, bool)> dco_decode_list_record_string_bool(dynamic raw);

  @protected
  List<TmsTreeRole> dco_decode_list_tms_tree_role(dynamic raw);

  @protected
  LoginRequest dco_decode_login_request(dynamic raw);

  @protected
  LoginResponse dco_decode_login_response(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  TmsDate? dco_decode_opt_box_autoadd_tms_date(dynamic raw);

  @protected
  TmsTime? dco_decode_opt_box_autoadd_tms_time(dynamic raw);

  @protected
  int? dco_decode_opt_box_autoadd_u_32(dynamic raw);

  @protected
  (String, bool) dco_decode_record_string_bool(dynamic raw);

  @protected
  RegisterRequest dco_decode_register_request(dynamic raw);

  @protected
  RegisterResponse dco_decode_register_response(dynamic raw);

  @protected
  RobotGamesLoadMatchRequest dco_decode_robot_games_load_match_request(
      dynamic raw);

  @protected
  Team dco_decode_team(dynamic raw);

  @protected
  TmsDate dco_decode_tms_date(dynamic raw);

  @protected
  TmsDateTime dco_decode_tms_date_time(dynamic raw);

  @protected
  TmsServerMatchState dco_decode_tms_server_match_state(dynamic raw);

  @protected
  TmsServerMatchStateEvent dco_decode_tms_server_match_state_event(dynamic raw);

  @protected
  TmsServerMatchTimerEvent dco_decode_tms_server_match_timer_event(dynamic raw);

  @protected
  TmsServerMatchTimerState dco_decode_tms_server_match_timer_state(dynamic raw);

  @protected
  TmsServerSocketEvent dco_decode_tms_server_socket_event(dynamic raw);

  @protected
  TmsServerSocketMessage dco_decode_tms_server_socket_message(dynamic raw);

  @protected
  TmsTime dco_decode_tms_time(dynamic raw);

  @protected
  TmsTreeRole dco_decode_tms_tree_role(dynamic raw);

  @protected
  TournamentConfig dco_decode_tournament_config(dynamic raw);

  @protected
  TournamentConfigSetBackupIntervalRequest
      dco_decode_tournament_config_set_backup_interval_request(dynamic raw);

  @protected
  TournamentConfigSetEndgameTimerLengthRequest
      dco_decode_tournament_config_set_endgame_timer_length_request(
          dynamic raw);

  @protected
  TournamentConfigSetNameRequest dco_decode_tournament_config_set_name_request(
      dynamic raw);

  @protected
  TournamentConfigSetRetainBackupsRequest
      dco_decode_tournament_config_set_retain_backups_request(dynamic raw);

  @protected
  TournamentConfigSetSeasonRequest
      dco_decode_tournament_config_set_season_request(dynamic raw);

  @protected
  TournamentConfigSetTimerLengthRequest
      dco_decode_tournament_config_set_timer_length_request(dynamic raw);

  @protected
  int dco_decode_u_16(dynamic raw);

  @protected
  int dco_decode_u_32(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  User dco_decode_user(dynamic raw);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  ErrorMessage sse_decode_box_autoadd_error_message(
      SseDeserializer deserializer);

  @protected
  GameMatch sse_decode_box_autoadd_game_match(SseDeserializer deserializer);

  @protected
  GameTable sse_decode_box_autoadd_game_table(SseDeserializer deserializer);

  @protected
  JudgingPod sse_decode_box_autoadd_judging_pod(SseDeserializer deserializer);

  @protected
  JudgingSession sse_decode_box_autoadd_judging_session(
      SseDeserializer deserializer);

  @protected
  LoginRequest sse_decode_box_autoadd_login_request(
      SseDeserializer deserializer);

  @protected
  LoginResponse sse_decode_box_autoadd_login_response(
      SseDeserializer deserializer);

  @protected
  RegisterRequest sse_decode_box_autoadd_register_request(
      SseDeserializer deserializer);

  @protected
  RegisterResponse sse_decode_box_autoadd_register_response(
      SseDeserializer deserializer);

  @protected
  RobotGamesLoadMatchRequest
      sse_decode_box_autoadd_robot_games_load_match_request(
          SseDeserializer deserializer);

  @protected
  Team sse_decode_box_autoadd_team(SseDeserializer deserializer);

  @protected
  TmsDate sse_decode_box_autoadd_tms_date(SseDeserializer deserializer);

  @protected
  TmsDateTime sse_decode_box_autoadd_tms_date_time(
      SseDeserializer deserializer);

  @protected
  TmsServerMatchStateEvent sse_decode_box_autoadd_tms_server_match_state_event(
      SseDeserializer deserializer);

  @protected
  TmsServerMatchTimerEvent sse_decode_box_autoadd_tms_server_match_timer_event(
      SseDeserializer deserializer);

  @protected
  TmsServerSocketMessage sse_decode_box_autoadd_tms_server_socket_message(
      SseDeserializer deserializer);

  @protected
  TmsTime sse_decode_box_autoadd_tms_time(SseDeserializer deserializer);

  @protected
  TmsTreeRole sse_decode_box_autoadd_tms_tree_role(
      SseDeserializer deserializer);

  @protected
  TournamentConfig sse_decode_box_autoadd_tournament_config(
      SseDeserializer deserializer);

  @protected
  TournamentConfigSetBackupIntervalRequest
      sse_decode_box_autoadd_tournament_config_set_backup_interval_request(
          SseDeserializer deserializer);

  @protected
  TournamentConfigSetEndgameTimerLengthRequest
      sse_decode_box_autoadd_tournament_config_set_endgame_timer_length_request(
          SseDeserializer deserializer);

  @protected
  TournamentConfigSetNameRequest
      sse_decode_box_autoadd_tournament_config_set_name_request(
          SseDeserializer deserializer);

  @protected
  TournamentConfigSetRetainBackupsRequest
      sse_decode_box_autoadd_tournament_config_set_retain_backups_request(
          SseDeserializer deserializer);

  @protected
  TournamentConfigSetSeasonRequest
      sse_decode_box_autoadd_tournament_config_set_season_request(
          SseDeserializer deserializer);

  @protected
  TournamentConfigSetTimerLengthRequest
      sse_decode_box_autoadd_tournament_config_set_timer_length_request(
          SseDeserializer deserializer);

  @protected
  int sse_decode_box_autoadd_u_32(SseDeserializer deserializer);

  @protected
  User sse_decode_box_autoadd_user(SseDeserializer deserializer);

  @protected
  ErrorMessage sse_decode_error_message(SseDeserializer deserializer);

  @protected
  GameMatch sse_decode_game_match(SseDeserializer deserializer);

  @protected
  GameMatchTable sse_decode_game_match_table(SseDeserializer deserializer);

  @protected
  GameTable sse_decode_game_table(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  JudgingPod sse_decode_judging_pod(SseDeserializer deserializer);

  @protected
  JudgingSession sse_decode_judging_session(SseDeserializer deserializer);

  @protected
  JudgingSessionPod sse_decode_judging_session_pod(
      SseDeserializer deserializer);

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer);

  @protected
  List<GameMatchTable> sse_decode_list_game_match_table(
      SseDeserializer deserializer);

  @protected
  List<JudgingSessionPod> sse_decode_list_judging_session_pod(
      SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  List<(String, bool)> sse_decode_list_record_string_bool(
      SseDeserializer deserializer);

  @protected
  List<TmsTreeRole> sse_decode_list_tms_tree_role(SseDeserializer deserializer);

  @protected
  LoginRequest sse_decode_login_request(SseDeserializer deserializer);

  @protected
  LoginResponse sse_decode_login_response(SseDeserializer deserializer);

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  TmsDate? sse_decode_opt_box_autoadd_tms_date(SseDeserializer deserializer);

  @protected
  TmsTime? sse_decode_opt_box_autoadd_tms_time(SseDeserializer deserializer);

  @protected
  int? sse_decode_opt_box_autoadd_u_32(SseDeserializer deserializer);

  @protected
  (String, bool) sse_decode_record_string_bool(SseDeserializer deserializer);

  @protected
  RegisterRequest sse_decode_register_request(SseDeserializer deserializer);

  @protected
  RegisterResponse sse_decode_register_response(SseDeserializer deserializer);

  @protected
  RobotGamesLoadMatchRequest sse_decode_robot_games_load_match_request(
      SseDeserializer deserializer);

  @protected
  Team sse_decode_team(SseDeserializer deserializer);

  @protected
  TmsDate sse_decode_tms_date(SseDeserializer deserializer);

  @protected
  TmsDateTime sse_decode_tms_date_time(SseDeserializer deserializer);

  @protected
  TmsServerMatchState sse_decode_tms_server_match_state(
      SseDeserializer deserializer);

  @protected
  TmsServerMatchStateEvent sse_decode_tms_server_match_state_event(
      SseDeserializer deserializer);

  @protected
  TmsServerMatchTimerEvent sse_decode_tms_server_match_timer_event(
      SseDeserializer deserializer);

  @protected
  TmsServerMatchTimerState sse_decode_tms_server_match_timer_state(
      SseDeserializer deserializer);

  @protected
  TmsServerSocketEvent sse_decode_tms_server_socket_event(
      SseDeserializer deserializer);

  @protected
  TmsServerSocketMessage sse_decode_tms_server_socket_message(
      SseDeserializer deserializer);

  @protected
  TmsTime sse_decode_tms_time(SseDeserializer deserializer);

  @protected
  TmsTreeRole sse_decode_tms_tree_role(SseDeserializer deserializer);

  @protected
  TournamentConfig sse_decode_tournament_config(SseDeserializer deserializer);

  @protected
  TournamentConfigSetBackupIntervalRequest
      sse_decode_tournament_config_set_backup_interval_request(
          SseDeserializer deserializer);

  @protected
  TournamentConfigSetEndgameTimerLengthRequest
      sse_decode_tournament_config_set_endgame_timer_length_request(
          SseDeserializer deserializer);

  @protected
  TournamentConfigSetNameRequest sse_decode_tournament_config_set_name_request(
      SseDeserializer deserializer);

  @protected
  TournamentConfigSetRetainBackupsRequest
      sse_decode_tournament_config_set_retain_backups_request(
          SseDeserializer deserializer);

  @protected
  TournamentConfigSetSeasonRequest
      sse_decode_tournament_config_set_season_request(
          SseDeserializer deserializer);

  @protected
  TournamentConfigSetTimerLengthRequest
      sse_decode_tournament_config_set_timer_length_request(
          SseDeserializer deserializer);

  @protected
  int sse_decode_u_16(SseDeserializer deserializer);

  @protected
  int sse_decode_u_32(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  User sse_decode_user(SseDeserializer deserializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_error_message(
      ErrorMessage self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_game_match(
      GameMatch self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_game_table(
      GameTable self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_judging_pod(
      JudgingPod self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_judging_session(
      JudgingSession self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_login_request(
      LoginRequest self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_login_response(
      LoginResponse self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_register_request(
      RegisterRequest self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_register_response(
      RegisterResponse self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_robot_games_load_match_request(
      RobotGamesLoadMatchRequest self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_team(Team self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tms_date(TmsDate self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tms_date_time(
      TmsDateTime self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tms_server_match_state_event(
      TmsServerMatchStateEvent self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tms_server_match_timer_event(
      TmsServerMatchTimerEvent self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tms_server_socket_message(
      TmsServerSocketMessage self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tms_time(TmsTime self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tms_tree_role(
      TmsTreeRole self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tournament_config(
      TournamentConfig self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tournament_config_set_backup_interval_request(
      TournamentConfigSetBackupIntervalRequest self, SseSerializer serializer);

  @protected
  void
      sse_encode_box_autoadd_tournament_config_set_endgame_timer_length_request(
          TournamentConfigSetEndgameTimerLengthRequest self,
          SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tournament_config_set_name_request(
      TournamentConfigSetNameRequest self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tournament_config_set_retain_backups_request(
      TournamentConfigSetRetainBackupsRequest self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tournament_config_set_season_request(
      TournamentConfigSetSeasonRequest self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tournament_config_set_timer_length_request(
      TournamentConfigSetTimerLengthRequest self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_u_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_user(User self, SseSerializer serializer);

  @protected
  void sse_encode_error_message(ErrorMessage self, SseSerializer serializer);

  @protected
  void sse_encode_game_match(GameMatch self, SseSerializer serializer);

  @protected
  void sse_encode_game_match_table(
      GameMatchTable self, SseSerializer serializer);

  @protected
  void sse_encode_game_table(GameTable self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_judging_pod(JudgingPod self, SseSerializer serializer);

  @protected
  void sse_encode_judging_session(
      JudgingSession self, SseSerializer serializer);

  @protected
  void sse_encode_judging_session_pod(
      JudgingSessionPod self, SseSerializer serializer);

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer);

  @protected
  void sse_encode_list_game_match_table(
      List<GameMatchTable> self, SseSerializer serializer);

  @protected
  void sse_encode_list_judging_session_pod(
      List<JudgingSessionPod> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_list_record_string_bool(
      List<(String, bool)> self, SseSerializer serializer);

  @protected
  void sse_encode_list_tms_tree_role(
      List<TmsTreeRole> self, SseSerializer serializer);

  @protected
  void sse_encode_login_request(LoginRequest self, SseSerializer serializer);

  @protected
  void sse_encode_login_response(LoginResponse self, SseSerializer serializer);

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_tms_date(
      TmsDate? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_tms_time(
      TmsTime? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_u_32(int? self, SseSerializer serializer);

  @protected
  void sse_encode_record_string_bool(
      (String, bool) self, SseSerializer serializer);

  @protected
  void sse_encode_register_request(
      RegisterRequest self, SseSerializer serializer);

  @protected
  void sse_encode_register_response(
      RegisterResponse self, SseSerializer serializer);

  @protected
  void sse_encode_robot_games_load_match_request(
      RobotGamesLoadMatchRequest self, SseSerializer serializer);

  @protected
  void sse_encode_team(Team self, SseSerializer serializer);

  @protected
  void sse_encode_tms_date(TmsDate self, SseSerializer serializer);

  @protected
  void sse_encode_tms_date_time(TmsDateTime self, SseSerializer serializer);

  @protected
  void sse_encode_tms_server_match_state(
      TmsServerMatchState self, SseSerializer serializer);

  @protected
  void sse_encode_tms_server_match_state_event(
      TmsServerMatchStateEvent self, SseSerializer serializer);

  @protected
  void sse_encode_tms_server_match_timer_event(
      TmsServerMatchTimerEvent self, SseSerializer serializer);

  @protected
  void sse_encode_tms_server_match_timer_state(
      TmsServerMatchTimerState self, SseSerializer serializer);

  @protected
  void sse_encode_tms_server_socket_event(
      TmsServerSocketEvent self, SseSerializer serializer);

  @protected
  void sse_encode_tms_server_socket_message(
      TmsServerSocketMessage self, SseSerializer serializer);

  @protected
  void sse_encode_tms_time(TmsTime self, SseSerializer serializer);

  @protected
  void sse_encode_tms_tree_role(TmsTreeRole self, SseSerializer serializer);

  @protected
  void sse_encode_tournament_config(
      TournamentConfig self, SseSerializer serializer);

  @protected
  void sse_encode_tournament_config_set_backup_interval_request(
      TournamentConfigSetBackupIntervalRequest self, SseSerializer serializer);

  @protected
  void sse_encode_tournament_config_set_endgame_timer_length_request(
      TournamentConfigSetEndgameTimerLengthRequest self,
      SseSerializer serializer);

  @protected
  void sse_encode_tournament_config_set_name_request(
      TournamentConfigSetNameRequest self, SseSerializer serializer);

  @protected
  void sse_encode_tournament_config_set_retain_backups_request(
      TournamentConfigSetRetainBackupsRequest self, SseSerializer serializer);

  @protected
  void sse_encode_tournament_config_set_season_request(
      TournamentConfigSetSeasonRequest self, SseSerializer serializer);

  @protected
  void sse_encode_tournament_config_set_timer_length_request(
      TournamentConfigSetTimerLengthRequest self, SseSerializer serializer);

  @protected
  void sse_encode_u_16(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_user(User self, SseSerializer serializer);
}

// Section: wire_class

class TmsRustLibWire implements BaseWire {
  TmsRustLibWire.fromExternalLibrary(ExternalLibrary lib);
}

@JS('wasm_bindgen')
external TmsRustLibWasmModule get wasmModule;

@JS()
@anonymous
extension type TmsRustLibWasmModule._(JSObject _) implements JSObject {}
