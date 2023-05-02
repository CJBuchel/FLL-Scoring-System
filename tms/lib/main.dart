import 'dart:async';

import 'package:tms/constants.dart';
import 'package:tms/network/network.dart';
import 'package:tms/screens/connection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tms/screens/screen_selector.dart';
import 'package:tms/screens/shared/tool_bar.dart';

class TMSApp extends StatefulWidget {
  TMSApp({super.key});

  @override
  _TMSAppState createState() => _TMSAppState();
}

class _TMSAppState extends State<TMSApp> {
  Timer _watchdogTimer = Timer(const Duration(), () {});
  TmsToolBar tmsToolBar = TmsToolBar();

  void startWatchdog() {
    if (_watchdogTimer.isActive) {
      _watchdogTimer.cancel();
    }
    setState(() {
      _watchdogTimer = Timer.periodic(const Duration(seconds: 5), (timer) async {
        await checkConnection().then((ok) {});
      });
    });
  }

  Future<void> startConnection() async {
    await Network.reset();
    Network.findServer().then((found) {
      if (found) {
        Network.connect();
      }
    });
    print("Network Started");
    startWatchdog();
  }

  Future<void> stopConnection() async {
    print("Network Stopped");
    _watchdogTimer.isActive ? _watchdogTimer.cancel() : '';
    Network.disconnect();
  }

  Future<bool> checkConnection() async {
    bool ok = await Network.checkConnection();
    if (!ok) {
      await Network.findServer();
      return false;
    } else {
      return true;
    }
  }

  @override
  void initState() {
    super.initState();
    print("Initialized main state");
    startConnection();
  }

  @override
  void dispose() {
    super.dispose();
    stopConnection();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'TMS Client',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),

      // Main Router
      routes: {
        '/': (context) => ScreenSelector(),
        '/server_connection': (context) => Connection(),
      },
    );
  }
}

void main() {
  runApp(TMSApp());
}
