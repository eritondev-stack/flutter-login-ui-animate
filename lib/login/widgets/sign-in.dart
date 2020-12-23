import 'dart:async';

import 'package:animate/home/home.dart';
import 'package:flutter/material.dart';

//SignUpBottom
class SignInBottom extends StatefulWidget {
  SignInBottom({Key key}) : super(key: key);

  @override
  _SignInBottomState createState() => _SignInBottomState();
}

class _SignInBottomState extends State<SignInBottom> {
  double largura = 350;
  double altura = 47;
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 400),
      child: InkWell(
        onTap: () {
          setState(() {
            largura = 60;
            change = false;
          });

/*           Timer(Duration(seconds: 3), () {
            setState(() {
              largura = 350;
              change = true;
            });
          }); */

          Timer(Duration(seconds: 4), () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    transitionDuration: Duration(seconds: 2),
                    pageBuilder: (_, __, ___) => HomePage()));

            /*       Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomePage())); */
          });
        },
        child: AnimatedContainer(
            onEnd: () {},
            curve: Curves.elasticInOut,
            duration: Duration(seconds: 1),
            width: largura,
            height: altura,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff03DDD2), Color(0xff03AFF2)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: change
                ? Text("Entrar",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white, fontSize: 25, letterSpacing: 0.5))
                : Stack(
                    children: <Widget>[
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        strokeWidth: 6,
                      ),
                      Hero(
                          tag: 'home',
                          child: Icon(
                            Icons.home,
                            size: 35,
                            color: Colors.white,
                          ))
                    ],
                  )),
      ),
    );
  }
}
