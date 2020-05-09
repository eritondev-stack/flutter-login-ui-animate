import 'package:animate/home/home.dart';
import 'package:animate/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_socket_io/flutter_socket_io.dart';
import 'package:flutter_socket_io/socket_io_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SocketIO socketIO;

  @override
  void initState() {
    super.initState();
    socketIO = SocketIOManager().createSocketIO(
      'http://10.0.0.107:3000',
      '/',
    );

    socketIO.init();
    socketIO.subscribe('get', reviveMessage);

    socketIO.connect();
  }

  reviveMessage(data) {
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
