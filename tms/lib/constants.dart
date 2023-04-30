import 'package:flutter/material.dart';

// Style constants
const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);

const defaultPadding = 16.0;

// Variable constants
const mdnsName = '_mdns-tms-server._udp.local';
const requestPort = 2121;
const wsPort = 2122;
const watchDogTime = Duration(seconds: 5);

// Local Storage Constants
const store_serverIP = "ServerIP";
const store_connection_state = "ServerConnectionState";
const store_ws_connection_state = "ServerWSConnectionState";
// const store_nt_uuid = "ntUuid";
// const store_nt_publicKey = "ntPuplicKey";
// const store_nt_privateKey = "ntPrivateKey";
// const store_nt_serverKey = "ntServerKey";
