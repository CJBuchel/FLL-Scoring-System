// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.5.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `clone`, `fmt`, `fmt`

class CategoricalOption {
  final String label;
  final int score;

  const CategoricalOption({
    required this.label,
    required this.score,
  });

  @override
  int get hashCode => label.hashCode ^ score.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoricalOption &&
          runtimeType == other.runtimeType &&
          label == other.label &&
          score == other.score;
}

class CategoricalQuestion {
  final List<CategoricalOption> options;
  final String defaultOption;

  const CategoricalQuestion({
    required this.options,
    required this.defaultOption,
  });

  static CategoricalQuestion default_() => TmsRustLib.instance.api
      .crateInfraFllInfraCategoryQuestionCategoricalQuestionDefault();

  static CategoricalQuestion fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraFllInfraCategoryQuestionCategoricalQuestionFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraFllInfraCategoryQuestionCategoricalQuestionToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraFllInfraCategoryQuestionCategoricalQuestionToSchema();

  @override
  int get hashCode => options.hashCode ^ defaultOption.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoricalQuestion &&
          runtimeType == other.runtimeType &&
          options == other.options &&
          defaultOption == other.defaultOption;
}
