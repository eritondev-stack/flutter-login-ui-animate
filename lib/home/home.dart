import 'package:animate/home/widgets/home-top.dart';
import 'package:animate/home/widgets/tile-custum.dart';
import 'package:animate/login/widgets/sign-in.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
          body: Container(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                HomeTop(),
                Stack(
                  children: <Widget>[
                    Container(
                      width: screenSize.width,
                      height: screenSize.height * 0.7,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.white70, Colors.white],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    ),
                    Tarefa(margin: 0),
                     Tarefa(margin: 70),
                    Tarefa(margin: 140),
                    Tarefa(margin: 210),
                    Tarefa(margin: 280),
                    Tarefa(margin: 350),
                    Tarefa(margin: 420),
                    Tarefa(margin: 490),
                    Tarefa(margin: 560), 
                  ],
                )
              ],
            ),
          ),
          /* floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.red.withOpacity(0.5),
          ) */),
    );
  }
}
