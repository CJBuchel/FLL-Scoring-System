import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:app_links/app_links.dart';
import 'package:echo_tree_flutter/echo_tree_flutter.dart';
import 'package:echo_tree_flutter/logging/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:logger/web.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:tms/app.dart';
import 'package:tms/network/http_client.dart';
import 'package:tms/providers/connection_provider.dart';
import 'package:tms/providers/event_config_provider.dart';
import 'package:tms/providers/local_storage_provider.dart';
import 'package:tms/providers/schedule_provider.dart';
import 'package:tms/utils/logger.dart';
import 'package:tms/network/network.dart';
import 'package:tms/providers/auth_provider.dart';

class NetworkObserver extends WidgetsBindingObserver {
  final _appLinks = AppLinks();
  StreamSubscription<Uri>? _appLinkSubscription;

  void handleLink(Uri link) {
    if (link.host == 'connect') {
      String? ip = link.queryParameters['ip'];
      String? port = link.queryParameters['port'];

      TmsLogger().i('Received Deep Link to $ip:$port');
      if (!TmsLocalStorageProvider().isReady) {
        TmsLocalStorageProvider().init().then((_) {
          TmsLocalStorageProvider().serverIp = ip ?? '';
          TmsLocalStorageProvider().serverPort = int.tryParse(port ?? '') ?? defaultServerPort;
        });
      } else {
        TmsLocalStorageProvider().serverIp = ip ?? '';
        TmsLocalStorageProvider().serverPort = int.tryParse(port ?? '') ?? defaultServerPort;
      }
    }
  }

  Future<void> initAppLinks() async {
    var link = await _appLinks.getInitialAppLink();
    if (link != null) {
      handleLink(link);
    }
    _appLinkSubscription = _appLinks.uriLinkStream.listen(handleLink);
  }

  Future<void> initEchoTree() async {
    var path = "tms";
    var metadataPath = "metadata";
    if (!kIsWeb) {
      final dir = await getApplicationDocumentsDirectory(); // might switch to support
      path = dir.path + "/tms";
    }

    TmsLogger().i("Starting EchoTree");
    await EchoTreeClient().init(path, metadataPath);
  }

  void disposeAppLinks() {
    _appLinkSubscription?.cancel();
  }

  void networkStartup() async {
    Network().start();
  }

  @override
  Future<AppExitResponse> didRequestAppExit() {
    disposeAppLinks();
    Network().stop();
    return super.didRequestAppExit();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      disposeAppLinks();
      Network().stop();
    } else if (state == AppLifecycleState.resumed) {
      initAppLinks().then((_) => Network().start());
    }
  }
}

class AppWrapper extends StatelessWidget {
  final Widget child;

  const AppWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TmsLocalStorageProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ConnectionProvider()),
        ChangeNotifierProvider(create: (_) => ScheduleProvider()),
        ChangeNotifierProvider(create: (_) => EventConfigProvider()),
      ],
      child: child,
    );
  }
}

void main() async {
  HttpOverrides.global = TmsHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();

  // startup loggers
  Logger().i("TMS App starting...");
  TmsLogger().setLogLevel(LogLevel.debug); // info
  EchoTreeLogger().useLogger(EchoTreeTmsLogBinder());

  // initialize local storage (network and some views are dependent on this)
  if (!TmsLocalStorageProvider().isReady) {
    await TmsLocalStorageProvider().init();
  }

  // initialize the network observers (async, don't wait up)
  final observer = NetworkObserver();
  WidgetsBinding.instance.addObserver(observer);
  observer.initEchoTree().then((_) {
    observer.initAppLinks().then((_) {
      observer.networkStartup();
    });
  });

  // set imperative API and start app
  GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(const AppWrapper(child: TMSApp()));
}
