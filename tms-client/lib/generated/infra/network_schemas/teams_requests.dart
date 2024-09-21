// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.4.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../database_schemas/team.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `fmt`

class TeamsUpdateTeamRequest {
  final String teamId;
  final Team team;

  const TeamsUpdateTeamRequest({
    required this.teamId,
    required this.team,
  });

  static Future<TeamsUpdateTeamRequest> default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasTeamsRequestsTeamsUpdateTeamRequestDefault();

  static TeamsUpdateTeamRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasTeamsRequestsTeamsUpdateTeamRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasTeamsRequestsTeamsUpdateTeamRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasTeamsRequestsTeamsUpdateTeamRequestToSchema();

  @override
  int get hashCode => teamId.hashCode ^ team.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamsUpdateTeamRequest &&
          runtimeType == other.runtimeType &&
          teamId == other.teamId &&
          team == other.team;
}
