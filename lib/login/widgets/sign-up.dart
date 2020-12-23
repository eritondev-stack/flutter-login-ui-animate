import 'dart:async';

import 'package:flutter/material.dart';

//SignUpBottom
class SignUpBottom extends StatefulWidget {
  SignUpBottom({Key key}) : super(key: key);

  @override
  _SignUpBottomState createState() => _SignUpBottomState();
}

class _SignUpBottomState extends State<SignUpBottom> {
  double largura = 350;
  double altura = 47;
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 85),
      child: InkWell(
        onTap: () {
          setState(() {
            largura = 60;
            change = false;
          });

          Timer(Duration(seconds: 3), () {
            setState(() {
              largura = 350;
              change = true;
            });
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
                    colors: [Color(0xffF95F75), Color(0xffFF9844)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: change
                ? Text("Cadastrar",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white, fontSize: 25, letterSpacing: 0.5))
                : CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    strokeWidth: 6,
                  )),
      ),
    );
  }
}
