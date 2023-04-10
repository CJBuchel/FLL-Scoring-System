import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
// import 'package:network_info_plus/network_info_plus.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:tms/schema/tms-schema.dart' as schema;

import 'package:http/http.dart' as http;

class Landing extends StatefulWidget {
  Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  // Register client to the server
  var channel;
  late Future<schema.RegisterResponse> registerResponse;

  Future<schema.RegisterResponse> register() async {
    var uuid = Uuid().v4();
    var request = schema.RegisterRequest(userId: uuid);

    final response = await http.post(Uri.parse('http://localhost:2121/register'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(request.toJson()));
    if (response.statusCode == 200) {
      return schema.RegisterResponse.fromJson(jsonDecode(response.body));
    } else {
      await http.delete(Uri.parse('http://localhost:2121/register/$uuid'));
      throw Exception("Failed to load register respones");
    }
  }

  void connect() {
    // final channel = WebSocketChannel.connect()
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    register().then((value) => {channel = WebSocketChannel.connect(Uri.parse(value.url))});

    // final check = TmsSchema(myInt: Test(testInt: 0));

    // channel.stream.listen((data) {
    //   print(data);
    // }, onError: (error) {
    //   print(error);
    // });
  }

  // final info = NetworkInfo();
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Landing Page"),
    );
  }
}
