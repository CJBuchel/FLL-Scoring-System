// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.5.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`

class Mission {
  final String id;
  final String label;
  final String? imageUrl;

  const Mission({
    required this.id,
    required this.label,
    this.imageUrl,
  });

  static Mission default_() =>
      TmsRustLib.instance.api.crateInfraFllInfraMissionMissionDefault();

  static Mission fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraFllInfraMissionMissionFromJsonString(json: json);

  String toJsonString() =>
      TmsRustLib.instance.api.crateInfraFllInfraMissionMissionToJsonString(
        that: this,
      );

  static String toSchema() =>
      TmsRustLib.instance.api.crateInfraFllInfraMissionMissionToSchema();

  @override
  int get hashCode => id.hashCode ^ label.hashCode ^ imageUrl.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mission &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          label == other.label &&
          imageUrl == other.imageUrl;
}
