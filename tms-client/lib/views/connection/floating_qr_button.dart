import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:qr_flutter/qr_flutter.dart';

enum WiFiEncryptionType {
  WPA,
  WPA_HIDDEN,
}

class FloatingQrButton extends StatelessWidget {
  final ValueNotifier<bool> _isDialOpen = ValueNotifier(false);

  String _getQrWifiData() {
    // WIFI configs

    // S - SSID
    // P - Password The wireless password. Leave blank for T:nopass.
    // T - Type Options: WEP, WPA, WPA2-EAP, or nopass (omit this parameter for nopass).
    // H - Hidden Set to true if the wireless network is hidden.
    // E - Enterprise Encryption EAP Method. Options: TTLS, PWD, etc.
    // A - Enterprise Authentication Anonymous outer identity.
    // I - Enterprise username Inner identity (username).
    // PH2 - Enterprise Phase 2 authentication method. Options: MSCHAPV2, TLS, MD5, etc.

    // example regular WPA wifi
    // WIFI:T:WPA;S:myNetwork;P:mypass;;

    // example enterprise PEAP wifi
    // WIFI:S:myNetwork;T:WPA2-EAP;E:PEAP;PH2:MSCHAPV2;U:myUser;P:myPassword;;

    return "";
  }

  void _displayQrCode(BuildContext context, Color dataColor, Color eyeColor) {
    // var qrCode = QrCode(4, 0);
    // qrCode.addData('Hello, World!');
    // var image = QrImage(qrCode);

    String ssid = "mySSID";
    String password = "myPass";

    String qrData = "WIFI:T:WPA;S:$ssid;P:$password;;";

    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: QrImageView(
          data: qrData,
          version: QrVersions.auto,
          size: 300.0,
          eyeStyle: QrEyeStyle(
            eyeShape: QrEyeShape.square,
            color: eyeColor, // Colors.green
          ),
          dataModuleStyle: QrDataModuleStyle(
            dataModuleShape: QrDataModuleShape.circle,
            color: dataColor,
          ),
        ),
      ),
    );
  }

  void _displayWiFiQrCode(BuildContext context) {
    _displayQrCode(context, Colors.blue, Colors.green);
  }

  void _displayServerQrCode(BuildContext context) {
    _displayQrCode(context, Colors.blue, Colors.red);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (v) async {
        if (v && _isDialOpen.value) {
          _isDialOpen.value = false;
        }
      },
      child: SpeedDial(
        icon: Icons.qr_code_2_sharp,
        activeIcon: Icons.close,
        openCloseDial: _isDialOpen,
        spaceBetweenChildren: 10,
        // spaceBetweenChildren: 4,
        buttonSize: const Size.fromRadius(45),
        childrenButtonSize: const Size.fromRadius(45),
        children: [
          SpeedDialChild(
            child: const Icon(Icons.wifi),
            label: 'WiFi',
            backgroundColor: Colors.green,
            onTap: () => _displayWiFiQrCode(context),
          ),
          SpeedDialChild(
            child: const Icon(Icons.link),
            label: 'Server',
            backgroundColor: Colors.red,
            onTap: () => _displayServerQrCode(context),
          ),
        ],
      ),
    );
  }
}
