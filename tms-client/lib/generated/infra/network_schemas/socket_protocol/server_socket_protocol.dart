// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `clone`, `clone`, `clone`

class TmsServerMatchLoadEvent {
  final List<String> gameMatchNumbers;

  const TmsServerMatchLoadEvent({
    required this.gameMatchNumbers,
  });

  static Future<TmsServerMatchLoadEvent> default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerMatchLoadEventDefault();

  static TmsServerMatchLoadEvent fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerMatchLoadEventFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerMatchLoadEventToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerMatchLoadEventToSchema();

  @override
  int get hashCode => gameMatchNumbers.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TmsServerMatchLoadEvent &&
          runtimeType == other.runtimeType &&
          gameMatchNumbers == other.gameMatchNumbers;
}

class TmsServerMatchTimerTimeEvent {
  final int time;

  const TmsServerMatchTimerTimeEvent({
    required this.time,
  });

  static Future<TmsServerMatchTimerTimeEvent> default_() => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerMatchTimerTimeEventDefault();

  static TmsServerMatchTimerTimeEvent fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerMatchTimerTimeEventFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerMatchTimerTimeEventToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerMatchTimerTimeEventToSchema();

  @override
  int get hashCode => time.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TmsServerMatchTimerTimeEvent &&
          runtimeType == other.runtimeType &&
          time == other.time;
}

enum TmsServerSocketEvent {
  purgeEvent,
  matchTimerStartCountdownEvent,
  matchTimerStartEvent,
  matchTimerTimeEvent,
  matchTimerEndgameEvent,
  matchTimerEndEvent,
  matchTimerStopEvent,
  matchTimerReloadEvent,
  matchLoadEvent,
  matchUnloadEvent,
  ;
}

class TmsServerSocketMessage {
  final String authToken;
  final TmsServerSocketEvent messageEvent;
  final String? message;

  const TmsServerSocketMessage({
    required this.authToken,
    required this.messageEvent,
    this.message,
  });

  static Future<TmsServerSocketMessage> default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerSocketMessageDefault();

  static TmsServerSocketMessage fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerSocketMessageFromJsonString(
              json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerSocketMessageToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasSocketProtocolServerSocketProtocolTmsServerSocketMessageToSchema();

  @override
  int get hashCode =>
      authToken.hashCode ^ messageEvent.hashCode ^ message.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TmsServerSocketMessage &&
          runtimeType == other.runtimeType &&
          authToken == other.authToken &&
          messageEvent == other.messageEvent &&
          message == other.message;
}