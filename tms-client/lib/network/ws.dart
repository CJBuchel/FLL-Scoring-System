import 'package:tms/utils/logger.dart';
import 'package:tms/network/connectivity.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebsocketController {
  final NetworkConnectivity _connectivity = NetworkConnectivity();
  WebSocketChannel? _channel;
  NetworkConnectionState get state => _connectivity.state;
  NetworkConnectivity get connectivity => _connectivity;

  void _handleEvent(dynamic event) async {
    try {
      // handle the event
      TmsLogger().d("Websocket message: $event");
    } catch (e) {
      TmsLogger().e("Websocket error: $e");
    }
  }

  void _listen() async {
    try {
      _channel?.stream.listen((event) {
        _handleEvent(event);
      }, onDone: () {
        TmsLogger().w("Websocket connection closed");
        _connectivity.state = NetworkConnectionState.disconnected;
      }, onError: (e) {
        TmsLogger().e("Websocket error: $e");
        _connectivity.state = NetworkConnectionState.disconnected;
      });
    } catch (e) {
      TmsLogger().e("Websocket error: $e");
      _connectivity.state = NetworkConnectionState.disconnected;
    }
  }

  Future<bool> connect(String url) async {
    try {
      _connectivity.state = NetworkConnectionState.connecting;
      _channel = WebSocketChannel.connect(Uri.parse(url));
      _channel?.ready.then((_) {
        _connectivity.state = NetworkConnectionState.connected;
        TmsLogger().d("Connected to TMS server websocket");
        _listen();
      });
    } catch (e) {
      _connectivity.state = NetworkConnectionState.disconnected;
      return false;
    }
    return true;
  }

  Future<void> disconnect() async {
    TmsLogger().i("Disconnecting from TMS server...");
    _connectivity.state = NetworkConnectionState.disconnected;
    _channel?.sink.close();
  }
}