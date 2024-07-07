// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`

abstract class DataSchemeExtensions {
  String toJsonString();
}

class TmsTreeRole {
  final String roleId;
  final String password;
  final List<String> readEchoTrees;
  final List<String> readWriteEchoTrees;

  const TmsTreeRole({
    required this.roleId,
    required this.password,
    required this.readEchoTrees,
    required this.readWriteEchoTrees,
  });

  static Future<TmsTreeRole> default_() =>
      TmsRustLib.instance.api.crateInfraTmsTreeRoleDefault();

  static TmsTreeRole fromJsonString({required String json}) =>
      TmsRustLib.instance.api.crateInfraTmsTreeRoleFromJsonString(json: json);

  String toJsonString() =>
      TmsRustLib.instance.api.crateInfraTmsTreeRoleToJsonString(
        that: this,
      );

  static String toSchema() =>
      TmsRustLib.instance.api.crateInfraTmsTreeRoleToSchema();

  @override
  int get hashCode =>
      roleId.hashCode ^
      password.hashCode ^
      readEchoTrees.hashCode ^
      readWriteEchoTrees.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TmsTreeRole &&
          runtimeType == other.runtimeType &&
          roleId == other.roleId &&
          password == other.password &&
          readEchoTrees == other.readEchoTrees &&
          readWriteEchoTrees == other.readWriteEchoTrees;
}