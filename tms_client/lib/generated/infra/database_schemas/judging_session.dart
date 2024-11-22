// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.6.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'category.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'tms_time/tms_date.dart';
import 'tms_time/tms_date_time.dart';
import 'tms_time/tms_time.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `clone`, `fmt`, `fmt`

class JudgingSession {
  final String sessionNumber;
  final TmsDateTime startTime;
  final TmsDateTime endTime;
  final List<JudgingSessionPod> judgingSessionPods;
  final bool completed;
  final TmsCategory category;

  const JudgingSession({
    required this.sessionNumber,
    required this.startTime,
    required this.endTime,
    required this.judgingSessionPods,
    required this.completed,
    required this.category,
  });

  static JudgingSession default_() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasJudgingSessionJudgingSessionDefault();

  static JudgingSession fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraDatabaseSchemasJudgingSessionJudgingSessionFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasJudgingSessionJudgingSessionToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasJudgingSessionJudgingSessionToSchema();

  @override
  int get hashCode =>
      sessionNumber.hashCode ^
      startTime.hashCode ^
      endTime.hashCode ^
      judgingSessionPods.hashCode ^
      completed.hashCode ^
      category.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JudgingSession &&
          runtimeType == other.runtimeType &&
          sessionNumber == other.sessionNumber &&
          startTime == other.startTime &&
          endTime == other.endTime &&
          judgingSessionPods == other.judgingSessionPods &&
          completed == other.completed &&
          category == other.category;
}

class JudgingSessionPod {
  final String podName;
  final String teamNumber;
  final bool coreValuesSubmitted;
  final bool innovationSubmitted;
  final bool robotDesignSubmitted;

  const JudgingSessionPod({
    required this.podName,
    required this.teamNumber,
    required this.coreValuesSubmitted,
    required this.innovationSubmitted,
    required this.robotDesignSubmitted,
  });

  static JudgingSessionPod default_() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasJudgingSessionJudgingSessionPodDefault();

  static JudgingSessionPod fromJsonString({required String json}) => TmsRustLib
      .instance.api
      .crateInfraDatabaseSchemasJudgingSessionJudgingSessionPodFromJsonString(
          json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasJudgingSessionJudgingSessionPodToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasJudgingSessionJudgingSessionPodToSchema();

  @override
  int get hashCode =>
      podName.hashCode ^
      teamNumber.hashCode ^
      coreValuesSubmitted.hashCode ^
      innovationSubmitted.hashCode ^
      robotDesignSubmitted.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JudgingSessionPod &&
          runtimeType == other.runtimeType &&
          podName == other.podName &&
          teamNumber == other.teamNumber &&
          coreValuesSubmitted == other.coreValuesSubmitted &&
          innovationSubmitted == other.innovationSubmitted &&
          robotDesignSubmitted == other.robotDesignSubmitted;
}
