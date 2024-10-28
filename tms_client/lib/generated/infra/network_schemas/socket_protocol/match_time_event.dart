// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.5.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `clone`

class TmsServerMatchTimerEvent {
  final int? time;
  final TmsServerMatchTimerState state;

  const TmsServerMatchTimerEvent({
    this.time,
    required this.state,
  });

  static Future<TmsServerMatchTimerEvent> default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasSocketProtocolMatchTimeEventTmsServerMatchTimerEventDefault();

  static TmsServerMatchTimerEvent fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasSocketProtocolMatchTimeEventTmsServerMatchTimerEventFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasSocketProtocolMatchTimeEventTmsServerMatchTimerEventToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasSocketProtocolMatchTimeEventTmsServerMatchTimerEventToSchema();

  @override
  int get hashCode => time.hashCode ^ state.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TmsServerMatchTimerEvent &&
          runtimeType == other.runtimeType &&
          time == other.time &&
          state == other.state;
}

enum TmsServerMatchTimerState {
  startWithCountdown,
  start,
  stop,
  end,
  time,
  endgame,
  reload,
  ;
}
