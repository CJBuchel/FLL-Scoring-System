// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.5.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'tms_date.dart';
import 'tms_duration.dart';
import 'tms_time.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`

class TmsDateTime {
  final TmsDate? date;
  final TmsTime? time;

  const TmsDateTime.raw({
    this.date,
    this.time,
  });

  TmsDateTime addDuration({required TmsDuration duration}) =>
      TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeAddDuration(
              that: this, duration: duration);

  int compareTo({required TmsDateTime other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeCompareTo(
          that: this, other: other);

  static Future<TmsDateTime> default_() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeDefault();

  TmsDuration difference({required TmsDateTime other}) =>
      TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeDifference(
              that: this, other: other);

  TmsDuration duration() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeDuration(
        that: this,
      );

  static TmsDateTime fromJsonString({required String json}) =>
      TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeFromJsonString(
              json: json);

  bool isAfter({required TmsDateTime other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeIsAfter(
          that: this, other: other);

  bool isBefore({required TmsDateTime other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeIsBefore(
          that: this, other: other);

  bool isSameMoment({required TmsDateTime other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeIsSameMoment(
          that: this, other: other);

  factory TmsDateTime({TmsDate? date, TmsTime? time}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeNew(
          date: date, time: time);

  static Future<TmsDateTime> now() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeNow();

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeToSchema();

  String toString() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsDateTimeTmsDateTimeToString(
        that: this,
      );

  @override
  int get hashCode => date.hashCode ^ time.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TmsDateTime &&
          runtimeType == other.runtimeType &&
          date == other.date &&
          time == other.time;
}
