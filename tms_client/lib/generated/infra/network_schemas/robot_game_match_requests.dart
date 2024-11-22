// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.6.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../database_schemas/category.dart';
import '../database_schemas/game_match.dart';
import '../database_schemas/tms_time/tms_date.dart';
import '../database_schemas/tms_time/tms_date_time.dart';
import '../database_schemas/tms_time/tms_time.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `fmt`, `fmt`, `fmt`

class RobotGameMatchInsertRequest {
  final String? matchId;
  final GameMatch gameMatch;

  const RobotGameMatchInsertRequest({
    this.matchId,
    required this.gameMatch,
  });

  static RobotGameMatchInsertRequest default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchInsertRequestDefault();

  static RobotGameMatchInsertRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchInsertRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchInsertRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchInsertRequestToSchema();

  @override
  int get hashCode => matchId.hashCode ^ gameMatch.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RobotGameMatchInsertRequest &&
          runtimeType == other.runtimeType &&
          matchId == other.matchId &&
          gameMatch == other.gameMatch;
}

class RobotGameMatchLoadRequest {
  final List<String> gameMatchNumbers;

  const RobotGameMatchLoadRequest({
    required this.gameMatchNumbers,
  });

  static RobotGameMatchLoadRequest default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchLoadRequestDefault();

  static RobotGameMatchLoadRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchLoadRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchLoadRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchLoadRequestToSchema();

  @override
  int get hashCode => gameMatchNumbers.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RobotGameMatchLoadRequest &&
          runtimeType == other.runtimeType &&
          gameMatchNumbers == other.gameMatchNumbers;
}

class RobotGameMatchRemoveRequest {
  final String matchId;

  const RobotGameMatchRemoveRequest({
    required this.matchId,
  });

  static RobotGameMatchRemoveRequest default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchRemoveRequestDefault();

  static RobotGameMatchRemoveRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchRemoveRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchRemoveRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameMatchRequestsRobotGameMatchRemoveRequestToSchema();

  @override
  int get hashCode => matchId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RobotGameMatchRemoveRequest &&
          runtimeType == other.runtimeType &&
          matchId == other.matchId;
}
