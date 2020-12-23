import 'dart:async';

import 'package:flutter/material.dart';

class Tarefa extends StatefulWidget {
  Tarefa({this.image, this.name, this.subName, this.margin});

  final String image;
  final String name;
  final String subName;
  final double margin;

  @override
  _TarefaState createState() => _TarefaState();
}

class _TarefaState extends State<Tarefa> {
  double marginFinal = 0;

  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 1000), () {
      setState(() {
        marginFinal = widget.margin;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.elasticOut,
      height: 70,
      margin: EdgeInsets.only(top: marginFinal),
      width: screenSize.width,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.red.withOpacity(0.3 ), width: 2))),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white24,
                image: DecorationImage(
                    image: AssetImage(
                        "assets/person.jpg"),
                    fit: BoxFit.cover)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Juarez da silva",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Juarez da silva",
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
