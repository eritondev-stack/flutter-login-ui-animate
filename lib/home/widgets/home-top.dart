import 'dart:async';
import 'package:animate/home/widgets/category.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatefulWidget {
  HomeTop({Key key}) : super(key: key);

  @override
  _HomeTopState createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  double avatar = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), () {
      setState(() {
        avatar = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xffF95F75), Color(0xffFF9844)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                  tag: 'home',
                  child: Icon(
                    Icons.home,
                    size: 35,
                    color: Color(0xff03AFF2),
                  )),
              SizedBox(width: 5),
              Text(
                "Bem vindo Juarez",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            alignment: Alignment.topRight,
            width: avatar * 120,
            height: avatar * 120,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/person.jpg"), fit: BoxFit.cover)),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff03AFF2)),
              child: Center(
                child: Text(
                  "5",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Category(),
        ],
      )),
    );
  }
}
