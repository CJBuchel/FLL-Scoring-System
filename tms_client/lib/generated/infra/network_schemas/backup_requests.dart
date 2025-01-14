// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.6.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../database_schemas/tms_time/tms_date.dart';
import '../database_schemas/tms_time/tms_date_time.dart';
import '../database_schemas/tms_time/tms_time.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `fmt`, `fmt`, `fmt`

class BackupGetNamesInfo {
  final String fileName;
  final TmsDateTime timestamp;

  const BackupGetNamesInfo({
    required this.fileName,
    required this.timestamp,
  });

  static BackupGetNamesInfo default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasBackupRequestsBackupGetNamesInfoDefault();

  static BackupGetNamesInfo fromJsonString({required String json}) => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasBackupRequestsBackupGetNamesInfoFromJsonString(
          json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasBackupRequestsBackupGetNamesInfoToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasBackupRequestsBackupGetNamesInfoToSchema();

  @override
  int get hashCode => fileName.hashCode ^ timestamp.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BackupGetNamesInfo &&
          runtimeType == other.runtimeType &&
          fileName == other.fileName &&
          timestamp == other.timestamp;
}

class BackupGetNamesResponse {
  final List<BackupGetNamesInfo> backups;

  const BackupGetNamesResponse({
    required this.backups,
  });

  static BackupGetNamesResponse default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasBackupRequestsBackupGetNamesResponseDefault();

  static BackupGetNamesResponse fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasBackupRequestsBackupGetNamesResponseFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasBackupRequestsBackupGetNamesResponseToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasBackupRequestsBackupGetNamesResponseToSchema();

  @override
  int get hashCode => backups.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BackupGetNamesResponse &&
          runtimeType == other.runtimeType &&
          backups == other.backups;
}

class BackupRestoreRequest {
  final String fileName;

  const BackupRestoreRequest({
    required this.fileName,
  });

  static BackupRestoreRequest default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasBackupRequestsBackupRestoreRequestDefault();

  static BackupRestoreRequest fromJsonString({required String json}) => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasBackupRequestsBackupRestoreRequestFromJsonString(
          json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasBackupRequestsBackupRestoreRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasBackupRequestsBackupRestoreRequestToSchema();

  @override
  int get hashCode => fileName.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BackupRestoreRequest &&
          runtimeType == other.runtimeType &&
          fileName == other.fileName;
}
