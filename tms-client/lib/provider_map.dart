import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tms/providers/auth_provider.dart';

// providers
import 'package:tms/providers/connection_provider.dart';
import 'package:tms/providers/game_table_provider.dart';
import 'package:tms/providers/tournament_blueprint_provider.dart';
import 'package:tms/providers/tournament_config_provider.dart';
import 'package:tms/providers/game_timer_provider.dart';
import 'package:tms/providers/local_storage_provider.dart';
import 'package:tms/providers/game_match_provider.dart';
import 'package:tms/providers/schedule_provider.dart';
import 'package:tms/providers/teams_provider.dart';

class ProviderMap extends StatelessWidget {
  final Widget app;

  const ProviderMap({Key? key, required this.app}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TmsLocalStorageProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ConnectionProvider()),
        ChangeNotifierProvider(create: (_) => ScheduleProvider()),
        ChangeNotifierProvider(create: (_) => TournamentConfigProvider()),
        ChangeNotifierProvider(create: (_) => GameMatchProvider()),
        ChangeNotifierProvider(create: (_) => GameTimerProvider()),
        ChangeNotifierProvider(create: (_) => TeamsProvider()),
        ChangeNotifierProvider(create: (_) => TournamentBlueprintProvider()),
        ChangeNotifierProvider(create: (_) => GameTableProvider()),
      ],
      child: app,
    );
  }
}