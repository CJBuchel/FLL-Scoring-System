// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.4.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'tms_duration.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`

class TmsDate {
  final int year;
  final int month;
  final int day;

  const TmsDate.raw({
    required this.year,
    required this.month,
    required this.day,
  });

  TmsDate addDuration({required TmsDuration duration}) =>
      TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateAddDuration(
              that: this, duration: duration);

  int compareTo({required TmsDate other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateCompareTo(
          that: this, other: other);

  static Future<TmsDate> default_() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateDefault();

  TmsDuration difference({required TmsDate other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateDifference(
          that: this, other: other);

  TmsDuration duration() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateDuration(
        that: this,
      );

  static TmsDate fromJsonString({required String json}) => TmsRustLib
      .instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateFromJsonString(json: json);

  bool isAfter({required TmsDate other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateIsAfter(
          that: this, other: other);

  bool isBefore({required TmsDate other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateIsBefore(
          that: this, other: other);

  bool isSameMoment({required TmsDate other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateIsSameMoment(
          that: this, other: other);

  factory TmsDate({required int year, required int month, required int day}) =>
      TmsRustLib.instance.api.crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateNew(
          year: year, month: month, day: day);

  static Future<TmsDate> now() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateNow();

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateToSchema();

  String toString() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasTmsTimeTmsDateTmsDateToString(
        that: this,
      );

  @override
  int get hashCode => year.hashCode ^ month.hashCode ^ day.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TmsDate &&
          runtimeType == other.runtimeType &&
          year == other.year &&
          month == other.month &&
          day == other.day;
}