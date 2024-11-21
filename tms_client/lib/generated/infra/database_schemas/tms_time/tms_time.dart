// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.5.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'tms_duration.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`

class TmsTime {
  final int hour;
  final int minute;
  final int second;

  const TmsTime.raw({
    required this.hour,
    required this.minute,
    required this.second,
  });

  TmsTime addDuration({required TmsDuration duration}) =>
      TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeAddDuration(
              that: this, duration: duration);

  int compareTo({required TmsTime other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeCompareTo(
          that: this, other: other);

  static TmsTime default_() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeDefault();

  TmsDuration difference({required TmsTime other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeDifference(
          that: this, other: other);

  TmsDuration duration() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeDuration(
        that: this,
      );

  static TmsTime fromJsonString({required String json}) => TmsRustLib
      .instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeFromJsonString(json: json);

  bool isAfter({required TmsTime other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeIsAfter(
          that: this, other: other);

  bool isBefore({required TmsTime other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeIsBefore(
          that: this, other: other);

  bool isSameMoment({required TmsTime other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeIsSameMoment(
          that: this, other: other);

  factory TmsTime(
          {required int hour, required int minute, required int second}) =>
      TmsRustLib.instance.api.crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeNew(
          hour: hour, minute: minute, second: second);

  static TmsTime now() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeNow();

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeToSchema();

  String toString() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsTimeTmsTimeToString(
        that: this,
      );

  @override
  int get hashCode => hour.hashCode ^ minute.hashCode ^ second.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TmsTime &&
          runtimeType == other.runtimeType &&
          hour == other.hour &&
          minute == other.minute &&
          second == other.second;
}
