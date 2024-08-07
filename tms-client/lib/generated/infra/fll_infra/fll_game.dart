// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.2.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'mission.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'question.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `fmt`

class FllGame {
  final List<Question> questions;
  final List<Mission> missions;

  const FllGame({
    required this.questions,
    required this.missions,
  });

  static Future<FllGame> default_() =>
      TmsRustLib.instance.api.crateInfraFllInfraFllGameFllGameDefault();

  static FllGame fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraFllInfraFllGameFllGameFromJsonString(json: json);

  String toJsonString() =>
      TmsRustLib.instance.api.crateInfraFllInfraFllGameFllGameToJsonString(
        that: this,
      );

  static String toSchema() =>
      TmsRustLib.instance.api.crateInfraFllInfraFllGameFllGameToSchema();

  @override
  int get hashCode => questions.hashCode ^ missions.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FllGame &&
          runtimeType == other.runtimeType &&
          questions == other.questions &&
          missions == other.missions;
}
