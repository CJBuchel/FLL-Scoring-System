import 'dart:io';

import 'package:tms/logger.dart';
import 'package:tms/network/network.dart';
import 'package:tms/schemas/networkSchema.dart';

class AuthService {
  Future<(int, LoginResponse?)> login(String username, String password) async {
    try {
      var request = LoginRequest(password: password, username: username).toJson();
      var response = await Network().networkPost("/login", request);

      if (response.$1) {
        LoginResponse loginResponse = LoginResponse.fromJson(response.$3);
        TmsLogger().i("Login successful: ${loginResponse.roles}");
        return (HttpStatus.ok, loginResponse);
      } else {
        return (response.$2, null);
      }
    } catch (e) {
      TmsLogger().e("Error: $e");
      return (HttpStatus.badRequest, null);
    }
  }
}
