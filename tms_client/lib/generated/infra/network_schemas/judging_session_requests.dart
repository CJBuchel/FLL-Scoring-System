// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.6.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../database_schemas/category.dart';
import '../database_schemas/judging_session.dart';
import '../database_schemas/tms_time/tms_date.dart';
import '../database_schemas/tms_time/tms_date_time.dart';
import '../database_schemas/tms_time/tms_time.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `fmt`, `fmt`

class JudgingSessionInsertRequest {
  final String? sessionId;
  final JudgingSession session;

  const JudgingSessionInsertRequest({
    this.sessionId,
    required this.session,
  });

  static JudgingSessionInsertRequest default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasJudgingSessionRequestsJudgingSessionInsertRequestDefault();

  static JudgingSessionInsertRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasJudgingSessionRequestsJudgingSessionInsertRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasJudgingSessionRequestsJudgingSessionInsertRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasJudgingSessionRequestsJudgingSessionInsertRequestToSchema();

  @override
  int get hashCode => sessionId.hashCode ^ session.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JudgingSessionInsertRequest &&
          runtimeType == other.runtimeType &&
          sessionId == other.sessionId &&
          session == other.session;
}

class JudgingSessionRemoveRequest {
  final String sessionId;

  const JudgingSessionRemoveRequest({
    required this.sessionId,
  });

  static JudgingSessionRemoveRequest default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasJudgingSessionRequestsJudgingSessionRemoveRequestDefault();

  static JudgingSessionRemoveRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasJudgingSessionRequestsJudgingSessionRemoveRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasJudgingSessionRequestsJudgingSessionRemoveRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasJudgingSessionRequestsJudgingSessionRemoveRequestToSchema();

  @override
  int get hashCode => sessionId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JudgingSessionRemoveRequest &&
          runtimeType == other.runtimeType &&
          sessionId == other.sessionId;
}
