import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tms/providers/local_storage_provider.dart';
import 'package:tms/utils/logger.dart';
import 'package:tms/schemas/networkSchema.dart';
import 'package:tms/services/AuthService.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();

  String get authToken => TmsLocalStorageProvider().authToken;
  String get uuid => TmsLocalStorageProvider().uuid;

  bool get isLoggedIn => TmsLocalStorageProvider().isLoggedIn;
  String get username => TmsLocalStorageProvider().authUsername;
  String get password => TmsLocalStorageProvider().authPassword;
  List<String> get roles => TmsLocalStorageProvider().authRoles;

  final _localStorage = TmsLocalStorageProvider();
  late final VoidCallback _lsListener;

  AuthProvider() {
    _lsListener = () {
      TmsLogger().i("Auth Provider - Local Storage Changed");
      notifyListeners();
    };

    _localStorage.addListener(_lsListener);
  }

  Future<int> login(String username, String password) async {
    var result = await _authService.login(username, password);
    int status = result.$1;
    LoginResponse? loginResponse = result.$2;

    if (status == HttpStatus.ok) {
      TmsLocalStorageProvider().authUsername = username;
      TmsLocalStorageProvider().authPassword = password;
      TmsLocalStorageProvider().authRoles = loginResponse?.roles ?? [];

      TmsLocalStorageProvider().isLoggedIn = true;
      notifyListeners();
    } else {
      TmsLocalStorageProvider().isLoggedIn = false;
    }

    return status;
  }

  Future<int> logout() async {
    var status = await _authService.logout();

    if (status == HttpStatus.ok) {
      TmsLocalStorageProvider().isLoggedIn = false;
      notifyListeners();
    }

    return status;
  }
}
