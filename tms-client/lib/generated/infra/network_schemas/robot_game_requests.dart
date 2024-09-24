// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.4.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../database_schemas/category.dart';
import '../database_schemas/game_match.dart';
import '../database_schemas/game_score_sheet.dart';
import '../database_schemas/tms_time/tms_date.dart';
import '../database_schemas/tms_time/tms_date_time.dart';
import '../database_schemas/tms_time/tms_time.dart';
import '../fll_infra/question.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `fmt`, `fmt`, `fmt`, `fmt`, `fmt`, `fmt`, `fmt`

class RobotGamesLoadMatchRequest {
  final List<String> gameMatchNumbers;

  const RobotGamesLoadMatchRequest({
    required this.gameMatchNumbers,
  });

  static Future<RobotGamesLoadMatchRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesLoadMatchRequestDefault();

  static RobotGamesLoadMatchRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesLoadMatchRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesLoadMatchRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesLoadMatchRequestToSchema();

  @override
  int get hashCode => gameMatchNumbers.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RobotGamesLoadMatchRequest &&
          runtimeType == other.runtimeType &&
          gameMatchNumbers == other.gameMatchNumbers;
}

class RobotGamesRemoveMatchRequest {
  final String matchId;

  const RobotGamesRemoveMatchRequest({
    required this.matchId,
  });

  static Future<RobotGamesRemoveMatchRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesRemoveMatchRequestDefault();

  static RobotGamesRemoveMatchRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesRemoveMatchRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesRemoveMatchRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesRemoveMatchRequestToSchema();

  @override
  int get hashCode => matchId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RobotGamesRemoveMatchRequest &&
          runtimeType == other.runtimeType &&
          matchId == other.matchId;
}

class RobotGamesRemoveScoreSheetRequest {
  final String scoreSheetId;

  const RobotGamesRemoveScoreSheetRequest({
    required this.scoreSheetId,
  });

  static Future<RobotGamesRemoveScoreSheetRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesRemoveScoreSheetRequestDefault();

  static RobotGamesRemoveScoreSheetRequest fromJsonString(
          {required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesRemoveScoreSheetRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesRemoveScoreSheetRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesRemoveScoreSheetRequestToSchema();

  @override
  int get hashCode => scoreSheetId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RobotGamesRemoveScoreSheetRequest &&
          runtimeType == other.runtimeType &&
          scoreSheetId == other.scoreSheetId;
}

class RobotGamesScoreSheetRequest {
  final String blueprintTitle;
  final String table;
  final String teamNumber;
  final String referee;
  final String? matchNumber;
  final String gp;
  final bool noShow;
  final int score;
  final int round;
  final bool isAgnostic;
  final List<QuestionAnswer> scoreSheetAnswers;
  final String privateComment;

  const RobotGamesScoreSheetRequest({
    required this.blueprintTitle,
    required this.table,
    required this.teamNumber,
    required this.referee,
    this.matchNumber,
    required this.gp,
    required this.noShow,
    required this.score,
    required this.round,
    required this.isAgnostic,
    required this.scoreSheetAnswers,
    required this.privateComment,
  });

  static Future<RobotGamesScoreSheetRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesScoreSheetRequestDefault();

  static RobotGamesScoreSheetRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesScoreSheetRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesScoreSheetRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesScoreSheetRequestToSchema();

  @override
  int get hashCode =>
      blueprintTitle.hashCode ^
      table.hashCode ^
      teamNumber.hashCode ^
      referee.hashCode ^
      matchNumber.hashCode ^
      gp.hashCode ^
      noShow.hashCode ^
      score.hashCode ^
      round.hashCode ^
      isAgnostic.hashCode ^
      scoreSheetAnswers.hashCode ^
      privateComment.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RobotGamesScoreSheetRequest &&
          runtimeType == other.runtimeType &&
          blueprintTitle == other.blueprintTitle &&
          table == other.table &&
          teamNumber == other.teamNumber &&
          referee == other.referee &&
          matchNumber == other.matchNumber &&
          gp == other.gp &&
          noShow == other.noShow &&
          score == other.score &&
          round == other.round &&
          isAgnostic == other.isAgnostic &&
          scoreSheetAnswers == other.scoreSheetAnswers &&
          privateComment == other.privateComment;
}

class RobotGamesTableSignalRequest {
  final String table;
  final String teamNumber;

  const RobotGamesTableSignalRequest({
    required this.table,
    required this.teamNumber,
  });

  static Future<RobotGamesTableSignalRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesTableSignalRequestDefault();

  static RobotGamesTableSignalRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesTableSignalRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesTableSignalRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesTableSignalRequestToSchema();

  @override
  int get hashCode => table.hashCode ^ teamNumber.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RobotGamesTableSignalRequest &&
          runtimeType == other.runtimeType &&
          table == other.table &&
          teamNumber == other.teamNumber;
}

class RobotGamesUpdateMatchRequest {
  final String matchId;
  final GameMatch gameMatch;

  const RobotGamesUpdateMatchRequest({
    required this.matchId,
    required this.gameMatch,
  });

  static Future<RobotGamesUpdateMatchRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesUpdateMatchRequestDefault();

  static RobotGamesUpdateMatchRequest fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesUpdateMatchRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesUpdateMatchRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesUpdateMatchRequestToSchema();

  @override
  int get hashCode => matchId.hashCode ^ gameMatch.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RobotGamesUpdateMatchRequest &&
          runtimeType == other.runtimeType &&
          matchId == other.matchId &&
          gameMatch == other.gameMatch;
}

class RobotGamesUpdateScoreSheetRequest {
  final String scoreSheetId;
  final GameScoreSheet scoreSheet;

  const RobotGamesUpdateScoreSheetRequest({
    required this.scoreSheetId,
    required this.scoreSheet,
  });

  static Future<RobotGamesUpdateScoreSheetRequest> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesUpdateScoreSheetRequestDefault();

  static RobotGamesUpdateScoreSheetRequest fromJsonString(
          {required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesUpdateScoreSheetRequestFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRobotGameRequestsRobotGamesUpdateScoreSheetRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRobotGameRequestsRobotGamesUpdateScoreSheetRequestToSchema();

  @override
  int get hashCode => scoreSheetId.hashCode ^ scoreSheet.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RobotGamesUpdateScoreSheetRequest &&
          runtimeType == other.runtimeType &&
          scoreSheetId == other.scoreSheetId &&
          scoreSheet == other.scoreSheet;
}
