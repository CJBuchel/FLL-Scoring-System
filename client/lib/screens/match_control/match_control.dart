import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tms/mixins/auto_subscribe.dart';
import 'package:tms/mixins/local_db_mixin.dart';
import 'package:tms/network/network.dart';
import 'package:tms/responsive.dart';
import 'package:tms/schema/tms_schema.dart';
import 'package:tms/screens/match_control/controls.dart';
import 'package:tms/screens/match_control/controls_mobile.dart';
import 'package:tms/screens/match_control/controls_shared.dart';
import 'package:tms/screens/match_control/table.dart';
import 'package:tms/screens/shared/tool_bar.dart';
import 'package:tms/screens/timer/clock.dart';

class MatchControl extends StatefulWidget {
  const MatchControl({Key? key}) : super(key: key);

  @override
  _MatchControlState createState() => _MatchControlState();
}

class _MatchControlState extends State<MatchControl> with AutoUnsubScribeMixin, LocalDatabaseMixin {
  List<GameMatch> _matches = [];
  List<GameMatch> _loadedMatches = [];
  List<GameMatch> _selectedMatches = [];
  List<Team> _teams = [];

  // Set teams
  void setTeams(List<Team> teams) async {
    List<Team> t = [];

    teams.sort((a, b) => int.parse(a.teamNumber).compareTo(int.parse(b.teamNumber)));

    for (var team in teams) {
      t.add(team);
    }

    setState(() {
      _teams = t;
    });
  }

  void setMatches(List<GameMatch> gameMatches) async {
    List<GameMatch> m = [];

    gameMatches.sort((a, b) => int.parse(a.matchNumber).compareTo(int.parse(b.matchNumber)));

    for (var match in gameMatches) {
      m.add(match);
    }

    setState(() {
      _matches = m;
    });
  }

  void onSelectedMatches(List<GameMatch> matches) {
    if (_loadedMatches.isEmpty) {
      setState(() {
        _selectedMatches.clear();
        _selectedMatches.addAll(matches);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    onTeamsUpdate((teams) => setTeams(teams));
    onMatchesUpdate((matches) => setMatches(matches));

    onTeamUpdate((team) {
      int idx = _teams.indexWhere((t) => t.teamNumber == team.teamNumber);
      if (idx != -1) {
        setState(() {
          _teams[idx] = team;
        });
      }
    });

    onMatchUpdate((match) {
      int idx = _matches.indexWhere((m) => m.matchNumber == match.matchNumber);
      if (idx != -1) {
        setState(() {
          _matches[idx] = match;
        });
      }
    });

    autoSubscribe("clock", (m) {
      if (m.subTopic == "end") {
        setState(() {
          _loadedMatches = [];
          _selectedMatches = [];
        });
      }
    });

    autoSubscribe("match", (m) {
      if (m.subTopic == "load") {
        if (m.message != null && m.message is String && m.message!.isNotEmpty) {
          final jsonString = jsonDecode(m.message!);
          SocketMatchLoadedMessage message = SocketMatchLoadedMessage.fromJson(jsonString);

          List<GameMatch> loadedMatches = [];
          for (var loadedMatchNumber in message.matchNumbers) {
            int idx = _matches.indexWhere((m) => m.matchNumber == loadedMatchNumber);
            for (var match in _matches) {
              if (match.matchNumber == loadedMatchNumber) {
                loadedMatches.add(match);
              }
            }
          }

          // check if the loaded matches are the same
          if (!listEquals(_loadedMatches, loadedMatches)) {
            setState(() {
              _loadedMatches = loadedMatches;
            });
          }

          if (!listEquals(_selectedMatches, loadedMatches)) {
            setState(() {
              _selectedMatches.clear();
              _selectedMatches.addAll(loadedMatches);
            });
          }
        }
      } else if (m.subTopic == "unload") {
        setState(() {
          _loadedMatches = [];
          // _selectedMatches = [];
        });
      }
    });

    Future.delayed(const Duration(seconds: 1), () async {
      if (!await Network.isConnected()) {
        getTeams().then((teams) => setTeams(teams));
        getMatches().then((matches) => setMatches(matches));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TmsToolBar(),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (!Responsive.isMobile(context)) {
              return Row(
                children: [
                  SizedBox(
                    width: constraints.maxWidth / 2, // 50%
                    child: MatchControlControls(
                      con: constraints,
                      teams: _teams,
                      matches: _matches,
                      loadedMatches: _loadedMatches,
                      selectedMatches: _selectedMatches,
                    ),
                  ),
                  SizedBox(
                    width: (constraints.maxWidth / 2), // 50%
                    child: MatchControlTable(
                      con: constraints,
                      matches: _matches,
                      onSelected: onSelectedMatches,
                      selectedMatches: _selectedMatches,
                      loadedMatches: _loadedMatches,
                    ),
                  ),
                ],
              );
            } else {
              return SizedBox(
                width: constraints.maxWidth,
                child: MatchControlTable(
                  con: constraints,
                  matches: _matches,
                  selectedMatches: _selectedMatches,
                  onSelected: onSelectedMatches,
                  loadedMatches: _loadedMatches,
                ),
              );
            }
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: LayoutBuilder(
          builder: (context, constraints) {
            if (Responsive.isMobile(context)) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                      heroTag: "load-unload",
                      onPressed: () {
                        if (_loadedMatches.isNotEmpty) {
                          loadMatch(MatchLoadStatus.unload, context, _selectedMatches).then((value) {
                            if (value != HttpStatus.ok) {
                              displayErrorDialog(value, context);
                            }
                          });
                        } else if (_selectedMatches.isNotEmpty && _loadedMatches.isEmpty) {
                          loadMatch(MatchLoadStatus.load, context, _selectedMatches).then((value) {
                            if (value != HttpStatus.ok) {
                              displayErrorDialog(value, context);
                            }
                          });
                        }
                      },
                      enableFeedback: true,
                      backgroundColor: (_selectedMatches.isNotEmpty || _loadedMatches.isNotEmpty) ? Colors.orange : Colors.grey,
                      child: _loadedMatches.isEmpty
                          ? const Icon(Icons.arrow_downward, color: Colors.white)
                          : const Icon(Icons.arrow_upward, color: Colors.white)),
                  FloatingActionButton(
                    heroTag: "next",
                    onPressed: () {
                      if (_selectedMatches.isNotEmpty && _loadedMatches.isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MatchControlMobileControls(
                              teams: _teams,
                              matches: _matches,
                              loadedMatches: _loadedMatches,
                              selectedMatches: _selectedMatches,
                            ),
                          ),
                        );
                      }
                    },
                    enableFeedback: true,
                    backgroundColor: (_selectedMatches.isNotEmpty && _loadedMatches.isNotEmpty) ? Colors.blue[300] : Colors.grey,
                    child: const Icon(Icons.double_arrow, color: Colors.white),
                  ),
                ],
              );
            } else {
              return const SizedBox();
            }
          },
        ));
  }
}
