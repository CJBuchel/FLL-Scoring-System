import 'dart:io';

import 'package:echo_tree_flutter/echo_tree_flutter.dart';
import 'package:echo_tree_flutter/widgets/echo_tree_provider.dart';
import 'package:flutter/material.dart';
import 'package:tms/generated/infra.dart';
import 'package:tms/generated/infra/database_schemas/user.dart';
import 'package:tms/generated/infra/network_schemas/login_requests.dart';
import 'package:tms/providers/local_storage_provider.dart';
import 'package:tms/services/auth_service.dart';

class AuthProvider extends EchoTreeProvider<String, User> {
  final AuthService _authService = AuthService();

  String get authToken => TmsLocalStorageProvider().authToken;
  String get uuid => TmsLocalStorageProvider().uuid;

  bool get isLoggedIn => TmsLocalStorageProvider().isLoggedIn;
  String get username => TmsLocalStorageProvider().authUsername;
  String get password => TmsLocalStorageProvider().authPassword;
  List<TmsTreeRole> get roles => TmsLocalStorageProvider().authRoles;

  final _localStorage = TmsLocalStorageProvider();
  late final VoidCallback _lsListener;

  AuthProvider() : super(tree: ':users', fromJsonString: (json) => User.fromJsonString(json: json)) {
    _lsListener = () {
      notifyListeners();
    };

    _localStorage.addListener(_lsListener);
  }

  @override
  void dispose() {
    _localStorage.removeListener(_lsListener);
    super.dispose();
  }

  Future<int> login(String username, String password) async {
    var result = await _authService.login(username, password);
    int status = result.$1;
    LoginResponse? loginResponse = result.$2;

    if (status == HttpStatus.ok && loginResponse != null) {
      TmsLocalStorageProvider().authUsername = username;
      TmsLocalStorageProvider().authPassword = password;
      TmsLocalStorageProvider().authRoles = loginResponse.roles;

      Map<String, String> roles = Map<String, String>.fromEntries(
        loginResponse.roles.map((e) => MapEntry(e.roleId, e.password)),
      );

      await EchoTreeClient().authenticate(roles);

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
      TmsLocalStorageProvider().authRoles = [];
      TmsLocalStorageProvider().authUsername = '';
      TmsLocalStorageProvider().authPassword = '';

      notifyListeners();
    }

    return status;
  }

  bool hasAccess(UserPermissions permissions) {
    var r = roles.map((e) => e.roleId).toList();
    return permissions.hasAccess(roles: r);
  }

  List<User> get usersByName {
    List<User> users = items.values.toList();
    users.sort((a, b) => a.username.compareTo(b.username));
    return users;
  }

  List<User> get users => usersByName;
}
