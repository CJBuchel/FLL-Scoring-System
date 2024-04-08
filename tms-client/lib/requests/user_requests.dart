import 'dart:io';

import 'package:tms/logger.dart';
import 'package:tms/network/network.dart';
import 'package:tms/schemas/networkSchema.dart';

Future<int> loginRequest(String username, String password) async {
  try {
    var request = LoginRequest(password: password, username: username).toJson();
    var response = await Network().networkPost("/login", request);

    if (response.$1) {
      return response.$2;
    } else {
      return HttpStatus.badRequest;
    }
  } catch (e) {
    TmsLogger().e("Error: $e");
    return HttpStatus.badRequest;
  }
}
