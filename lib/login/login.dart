import 'dart:async';
import 'package:animate/login/widgets/form-container.dart';
import 'package:animate/login/widgets/sign-in.dart';
import 'package:animate/login/widgets/sign-up.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  AnimationController animationController;
  AnimationController animationController2;

   double op = 0;

  @override
  void initState() {
    //ODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    Timer(Duration(seconds: 3), () {

      setState(() {
        op = 1;
      });

    });
  }

  @override
  void dispose() {
    //DO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tm = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Lottie.asset("assets/data.json",
                  repeat: false,
                  width: tm.width,
                  height: tm.height,
                  fit: BoxFit.cover),
              AnimatedOpacity(
                         duration: Duration(seconds: 1),
                opacity: op,
                              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Lottie.asset("assets/login.json",
                          repeat: true, width: 300, height: 300),
                      FormContainer(),
                      SignUpBottom(),

                    ],
                  ),
                ),
              ),
              AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: op,
                child: SignInBottom()),

              //StaggerAnimation(controller: animationController.view),
            ],
          ),
         
        ],
      ),
    );
  }
}
