// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.2.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../fll_infra/fll_blueprint.dart';
import '../fll_infra/mission.dart';
import '../fll_infra/question.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`

class TournamentBlueprint {
  final String title;
  final FllBlueprint blueprint;

  const TournamentBlueprint({
    required this.title,
    required this.blueprint,
  });

  static Future<TournamentBlueprint> default_() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTournamentBlueprintTournamentBlueprintDefault();

  static TournamentBlueprint fromJsonString({required String json}) => TmsRustLib
      .instance.api
      .crateInfraDatabaseSchemasTournamentBlueprintTournamentBlueprintFromJsonString(
          json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTournamentBlueprintTournamentBlueprintToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTournamentBlueprintTournamentBlueprintToSchema();

  @override
  int get hashCode => title.hashCode ^ blueprint.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TournamentBlueprint &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          blueprint == other.blueprint;
}
