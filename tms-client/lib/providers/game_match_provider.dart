import 'package:echo_tree_flutter/widgets/echo_tree_provider.dart';
import 'package:tms/schemas/database_schema.dart';
import 'package:tms/utils/tms_date_time.dart';

class GameMatchProvider extends EchoTreeProvider<String, GameMatch> {
  GameMatchProvider() : super(tree: ":robot_game:matches", fromJson: (json) => GameMatch.fromJson(json));

  List<String> _stagedMatchNumbers = [];

  bool isMatchStaged(String matchNumber) {
    return _stagedMatchNumbers.contains(matchNumber);
  }

  bool canStageMatch(String matchNumber) {
    // check if this match is already staged
    bool conflictingTable = stagedMatches.any((stagedMatch) {
      // check against each staged match
      GameMatch match = matches.firstWhere((match) => match.matchNumber == matchNumber);
      return match.gameMatchTables.any((table) {
        return stagedMatch.gameMatchTables.any((stagedTable) {
          return table.table == stagedTable.table;
        });
      });
    });

    return !conflictingTable;
  }

  List<GameMatch> get matches {
    // order matches by start time
    List<GameMatch> matches = this.items.values.toList();
    matches.sort((a, b) {
      // sort by start time
      return tmsDateTimeCompare(a.startTime, b.startTime);
    });

    return matches;
  }

  List<GameMatch> get stagedMatches {
    return matches.where((match) => _stagedMatchNumbers.contains(match.matchNumber)).toList();
  }

  void stageMatches(List<String> matchNumbers) {
    _stagedMatchNumbers = matchNumbers;
    notifyListeners();
  }

  void clearStagedMatches() {
    _stagedMatchNumbers = [];
    notifyListeners();
  }

  void addMatchToStage(String matchNumber) {
    // add match if not already staged
    if (!_stagedMatchNumbers.contains(matchNumber)) {
      _stagedMatchNumbers = List.from(_stagedMatchNumbers)..add(matchNumber);
      notifyListeners();
    }
  }

  void removeMatchFromStage(String matchNumber) {
    // remove match if staged
    if (_stagedMatchNumbers.contains(matchNumber)) {
      _stagedMatchNumbers = List.from(_stagedMatchNumbers)..remove(matchNumber);
      notifyListeners();
    }
  }

  void loadMatches(List<GameMatch> matches) {}
  void setMatchCompleted(GameMatch match) {}
  void setMatchIncomplete(GameMatch match) {}
}
