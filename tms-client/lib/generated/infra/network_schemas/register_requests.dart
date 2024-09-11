// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.3.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import '../../infra.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

class RegisterRequest {
  final String? username;
  final String? password;

  const RegisterRequest({
    this.username,
    this.password,
  });

  static Future<RegisterRequest> default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRegisterRequestsRegisterRequestDefault();

  static RegisterRequest fromJsonString({required String json}) => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasRegisterRequestsRegisterRequestFromJsonString(
          json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRegisterRequestsRegisterRequestToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRegisterRequestsRegisterRequestToSchema();

  @override
  int get hashCode => username.hashCode ^ password.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegisterRequest &&
          runtimeType == other.runtimeType &&
          username == other.username &&
          password == other.password;
}

class RegisterResponse {
  final String authToken;
  final String uuid;
  final String url;
  final String serverIp;
  final List<TmsTreeRole> roles;

  const RegisterResponse({
    required this.authToken,
    required this.uuid,
    required this.url,
    required this.serverIp,
    required this.roles,
  });

  static Future<RegisterResponse> default_() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRegisterRequestsRegisterResponseDefault();

  static RegisterResponse fromJsonString({required String json}) => TmsRustLib
      .instance.api
      .crateInfraNetworkSchemasRegisterRequestsRegisterResponseFromJsonString(
          json: json);

  String toJsonString() => TmsRustLib.instance.api
          .crateInfraNetworkSchemasRegisterRequestsRegisterResponseToJsonString(
        that: this,
      );

  static String toSchema() => TmsRustLib.instance.api
      .crateInfraNetworkSchemasRegisterRequestsRegisterResponseToSchema();

  @override
  int get hashCode =>
      authToken.hashCode ^
      uuid.hashCode ^
      url.hashCode ^
      serverIp.hashCode ^
      roles.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegisterResponse &&
          runtimeType == other.runtimeType &&
          authToken == other.authToken &&
          uuid == other.uuid &&
          url == other.url &&
          serverIp == other.serverIp &&
          roles == other.roles;
}