import 'package:flutter/foundation.dart';
import 'package:tms/generated/infra/network_schemas/socket_protocol/match_state_event.dart';
import 'package:tms/generated/infra/network_schemas/socket_protocol/server_socket_protocol.dart';
import 'package:tms/generated/infra/network_schemas/socket_protocol/table_state_event.dart';
import 'package:tms/mixins/server_event_subscriber_mixin.dart';
import 'package:tms/utils/logger.dart';

class GameTableSignalProvider extends ChangeNotifier with ServerEventSubscribeNotifierMixin {
  final Map<String, String> _tableSignals = {};
  List<String> _loadedMatchNumbers = [];

  void _updateTableSignals(String table, String teamNumber) {
    // update or add table signal
    _tableSignals[table] = teamNumber;
    notifyListeners();
  }

  GameTableSignalProvider() {
    subscribeToEvent(TmsServerSocketEvent.tableStateEvent, (event) {
      if (event.message != null) {
        // handle table state event
        try {
          TmsServerTableStateEvent tableStateEvent = TmsServerTableStateEvent.fromJsonString(json: event.message!);
          _updateTableSignals(tableStateEvent.table, tableStateEvent.teamNumber);
        } catch (e) {
          TmsLogger().e("Error parsing table state event: $e");
        }
      }
    });
    subscribeToEvent(TmsServerSocketEvent.matchStateEvent, (event) {
      if (event.message != null) {
        // handle match state event
        try {
          TmsServerMatchStateEvent matchStateEvent = TmsServerMatchStateEvent.fromJsonString(json: event.message!);
          bool load = matchStateEvent.state == TmsServerMatchState.load;
          bool unload = matchStateEvent.state == TmsServerMatchState.unload;

          // clear table signals on first load or unload
          if (load || unload) {
            // check if it's a new match (using match number equality)
            if (!listEquals(matchStateEvent.gameMatchNumbers, _loadedMatchNumbers)) {
              _loadedMatchNumbers = matchStateEvent.gameMatchNumbers;
              _tableSignals.clear();
              notifyListeners();
            }
          }
        } catch (e) {
          TmsLogger().e("Error parsing match state event: $e");
        }
      }
    });
  }

  Map<String, String> get tableSignals => _tableSignals;
}
