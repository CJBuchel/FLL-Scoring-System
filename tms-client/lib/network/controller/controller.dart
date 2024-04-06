import 'package:flutter/foundation.dart';
import 'package:tms/constants.dart';
import 'package:tms/logger.dart';
import 'package:tms/network/controller/connectivity.dart';
import 'package:tms/network/controller/db.dart';
import 'package:tms/network/controller/http.dart';
import 'package:tms/network/controller/mdns.dart';
import 'package:tms/network/controller/ws.dart';

class NetworkController {
  final HttpController _httpController = HttpController();
  final MdnsController _mdnsController = MdnsController();
  final WebSocketController _webSocketController = WebSocketController();
  final DbController _dbController = DbController();

  final ValueNotifier<NetworkConnectionState> _stateNotifier = ValueNotifier(NetworkConnectionState.disconnected);
  ValueNotifier<NetworkConnectionState> get stateNotifier => _stateNotifier;

  // (http, ws, db)
  (NetworkConnectivity, NetworkConnectivity, NetworkConnectivity) innerNetworkStates() {
    return (_httpController.connectivity, _webSocketController.connectivity, _dbController.connectivity);
  }

  NetworkConnectionState get state {
    var states = [
      _httpController.state,
      _webSocketController.state,
      _dbController.state,
    ];

    NetworkConnectionState st;

    if (states.every((element) => element == NetworkConnectionState.connected)) {
      st = NetworkConnectionState.connected;
    } else if (states.contains(NetworkConnectionState.connecting)) {
      st = NetworkConnectionState.connecting;
    } else {
      // disconnected
      st = NetworkConnectionState.disconnected;
    }

    if (st != _stateNotifier.value) {
      _stateNotifier.value = st;
    }

    return st;
  }

  Future<bool> _checkIp(String ip) async {
    var protocols = ["https", "http"];
    for (var p in protocols) {
      // TmsLocalStorage().serverHttpProtocol = p;
      if (await _httpController.pulse("$p://$ip:$serverPort")) {
        TmsLocalStorage().serverHttpProtocol = p;
        TmsLocalStorage().serverIp = ip;
        return true;
      }
    }
    return false;
  }

  Future<bool> _heartbeat() async {
    // check stored address
    TmsLogger().d("Checking stored address");
    if (await _httpController.pulse(TmsLocalStorage().serverAddress)) {
      TmsLogger().i("Connected to TMS server using stored address");
      return true;
    }

    // check if ip is correct
    TmsLogger().d("Checking stored ip");
    if (await _checkIp(TmsLocalStorage().serverIp)) {
      TmsLogger().i("Connected to TMS server (protocol changed)");
      return true;
    }

    // check web connection (web server is usually same as regular server)
    if (kIsWeb) {
      TmsLogger().d("Checking web server ip");
      String url = Uri.base.host;
      String host = Uri.parse(url).toString();
      TmsLogger().d("Checking host: $host");
      if (host.isNotEmpty) {
        if (await _checkIp(host)) {
          TmsLogger().i("Connected to TMS server (web server)");
          return true;
        }
      }
    }

    // find server using mdns
    if (!kIsWeb) {
      TmsLogger().d("Finding server using mdns");
      var (found, ip) = await _mdnsController.findServer();
      if (found) {
        TmsLocalStorage().serverIp = ip;
        if (await _checkIp(ip)) {
          return true;
        }
      }
    }

    // couldn't find server pulse
    TmsLogger().e("Failed to connect to TMS server");
    return false;
  }

  Future<bool> _websocketConnect() async {
    return await _webSocketController.connect(TmsLocalStorage().wsConnectionString);
  }

  Future<bool> connect() async {
    if (await _heartbeat()) {
      if (await _httpController.register()) {
        if (await _websocketConnect()) {
          await _dbController.connect();
          return true;
        }
      }
    }
    return false;
  }

  Future<void> disconnect() async {
    await _dbController.disconnect();
    await _httpController.unregister();
    await _webSocketController.disconnect();
  }
}