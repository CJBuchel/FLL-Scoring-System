// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.3.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `fmt`, `fmt`, `fmt`, `fmt`, `fmt`, `fmt`, `fmt`, `fmt`

enum BlueprintType {
  agnostic,
  seasonal,
  ;
}

class TournamentConfigSetAdminPasswordRequest {
  final String adminPassword;

  const TournamentConfigSetAdminPasswordRequest({
    required this.adminPassword,
  });

  static Future<TournamentConfigSetAdminPasswordRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetAdminPasswordRequestDefault();

  static TournamentConfigSetAdminPasswordRequest fromJsonString(
          {required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetAdminPasswordRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetAdminPasswordRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetAdminPasswordRequestToSchema();

  @override
  int get hashCode => adminPassword.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TournamentConfigSetAdminPasswordRequest &&
          runtimeType == other.runtimeType &&
          adminPassword == other.adminPassword;
}

class TournamentConfigSetBackupIntervalRequest {
  final int interval;

  const TournamentConfigSetBackupIntervalRequest({
    required this.interval,
  });

  static Future<TournamentConfigSetBackupIntervalRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetBackupIntervalRequestDefault();

  static TournamentConfigSetBackupIntervalRequest fromJsonString(
          {required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetBackupIntervalRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetBackupIntervalRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetBackupIntervalRequestToSchema();

  @override
  int get hashCode => interval.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TournamentConfigSetBackupIntervalRequest &&
          runtimeType == other.runtimeType &&
          interval == other.interval;
}

class TournamentConfigSetEndgameTimerLengthRequest {
  final int timerLength;

  const TournamentConfigSetEndgameTimerLengthRequest({
    required this.timerLength,
  });

  static Future<TournamentConfigSetEndgameTimerLengthRequest> default_() =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetEndgameTimerLengthRequestDefault();

  static TournamentConfigSetEndgameTimerLengthRequest fromJsonString(
          {required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetEndgameTimerLengthRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetEndgameTimerLengthRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetEndgameTimerLengthRequestToSchema();

  @override
  int get hashCode => timerLength.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TournamentConfigSetEndgameTimerLengthRequest &&
          runtimeType == other.runtimeType &&
          timerLength == other.timerLength;
}

class TournamentConfigSetNameRequest {
  final String name;

  const TournamentConfigSetNameRequest({
    required this.name,
  });

  static Future<TournamentConfigSetNameRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetNameRequestDefault();

  static TournamentConfigSetNameRequest fromJsonString(
          {required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetNameRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetNameRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetNameRequestToSchema();

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TournamentConfigSetNameRequest &&
          runtimeType == other.runtimeType &&
          name == other.name;
}

class TournamentConfigSetRetainBackupsRequest {
  final int retainBackups;

  const TournamentConfigSetRetainBackupsRequest({
    required this.retainBackups,
  });

  static Future<TournamentConfigSetRetainBackupsRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetRetainBackupsRequestDefault();

  static TournamentConfigSetRetainBackupsRequest fromJsonString(
          {required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetRetainBackupsRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetRetainBackupsRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetRetainBackupsRequestToSchema();

  @override
  int get hashCode => retainBackups.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TournamentConfigSetRetainBackupsRequest &&
          runtimeType == other.runtimeType &&
          retainBackups == other.retainBackups;
}

class TournamentConfigSetSeasonRequest {
  final BlueprintType blueprintType;
  final String? season;

  const TournamentConfigSetSeasonRequest({
    required this.blueprintType,
    this.season,
  });

  static Future<TournamentConfigSetSeasonRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetSeasonRequestDefault();

  static TournamentConfigSetSeasonRequest fromJsonString(
          {required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetSeasonRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetSeasonRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetSeasonRequestToSchema();

  @override
  int get hashCode => blueprintType.hashCode ^ season.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TournamentConfigSetSeasonRequest &&
          runtimeType == other.runtimeType &&
          blueprintType == other.blueprintType &&
          season == other.season;
}

class TournamentConfigSetTimerLengthRequest {
  final int timerLength;

  const TournamentConfigSetTimerLengthRequest({
    required this.timerLength,
  });

  static Future<TournamentConfigSetTimerLengthRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetTimerLengthRequestDefault();

  static TournamentConfigSetTimerLengthRequest fromJsonString(
          {required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetTimerLengthRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetTimerLengthRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasTournamentConfigRequestsTournamentConfigSetTimerLengthRequestToSchema();

  @override
  int get hashCode => timerLength.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TournamentConfigSetTimerLengthRequest &&
          runtimeType == other.runtimeType &&
          timerLength == other.timerLength;
}
