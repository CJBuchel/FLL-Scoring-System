// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.4.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `clone`, `clone`, `fmt`, `fmt`, `fmt`

class TmsDate {
  final int year;
  final int month;
  final int day;

  const TmsDate({
    required this.year,
    required this.month,
    required this.day,
  });

  int compareTo({required TmsDate other}) =>
      TmsRustLib.instance.api.crateInfraDatabaseSchemasDateTimeTmsDateCompareTo(
          that: this, other: other);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<TmsDate> newInstance(
          {required int year, required int month, required int day}) =>
      TmsRustLib.instance.api.crateInfraDatabaseSchemasDateTimeTmsDateNew(
          year: year, month: month, day: day);

  static Future<TmsDate> now() =>
      TmsRustLib.instance.api.crateInfraDatabaseSchemasDateTimeTmsDateNow();

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

class TmsDateTime {
  final TmsDate? date;
  final TmsTime? time;

  const TmsDateTime({
    this.date,
    this.time,
  });

  int compareTo({required TmsDateTime other}) => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasDateTimeTmsDateTimeCompareTo(
          that: this, other: other);

  static Future<TmsDateTime> default_() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasDateTimeTmsDateTimeDefault();

  static TmsDateTime fromJsonString({required String json}) => TmsRustLib
      .instance.api
      .crateInfraDatabaseSchemasDateTimeTmsDateTimeFromJsonString(json: json);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<TmsDateTime> newInstance({TmsDate? date, TmsTime? time}) =>
      TmsRustLib.instance.api.crateInfraDatabaseSchemasDateTimeTmsDateTimeNew(
          date: date, time: time);

  static Future<TmsDateTime> now() =>
      TmsRustLib.instance.api.crateInfraDatabaseSchemasDateTimeTmsDateTimeNow();

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraDatabaseSchemasDateTimeTmsDateTimeToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraDatabaseSchemasDateTimeTmsDateTimeToSchema();

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

class TmsTime {
  final int hour;
  final int minute;
  final int second;

  const TmsTime({
    required this.hour,
    required this.minute,
    required this.second,
  });

  int compareTo({required TmsTime other}) =>
      TmsRustLib.instance.api.crateInfraDatabaseSchemasDateTimeTmsTimeCompareTo(
          that: this, other: other);

  // HINT: Make it `#[frb(sync)]` to let it become the default constructor of Dart class.
  static Future<TmsTime> newInstance(
          {required int hour, required int minute, required int second}) =>
      TmsRustLib.instance.api.crateInfraDatabaseSchemasDateTimeTmsTimeNew(
          hour: hour, minute: minute, second: second);

  static Future<TmsTime> now() =>
      TmsRustLib.instance.api.crateInfraDatabaseSchemasDateTimeTmsTimeNow();

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
