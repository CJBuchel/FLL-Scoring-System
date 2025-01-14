// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.6.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`

class TmsServerTableStateEvent {
  final String table;
  final String teamNumber;

  const TmsServerTableStateEvent({
    required this.table,
    required this.teamNumber,
  });

  static TmsServerTableStateEvent default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasSocketProtocolTableStateEventTmsServerTableStateEventDefault();

  static TmsServerTableStateEvent fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasSocketProtocolTableStateEventTmsServerTableStateEventFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasSocketProtocolTableStateEventTmsServerTableStateEventToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasSocketProtocolTableStateEventTmsServerTableStateEventToSchema();

  @override
  int get hashCode => table.hashCode ^ teamNumber.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TmsServerTableStateEvent &&
          runtimeType == other.runtimeType &&
          table == other.table &&
          teamNumber == other.teamNumber;
}
