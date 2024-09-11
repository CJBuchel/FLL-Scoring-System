// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.3.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'category_question.dart';
import 'fll_blueprint.dart';
import 'mission.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'question.dart';
import 'rule_engine.dart';

abstract class BaseSeason {
  Future<FllBlueprint> getFllGame();

  Future<String> getSeason();

  Future<List<QuestionValidationError>> validate(
      {required Map<String, QuestionAnswer> answers});
}
