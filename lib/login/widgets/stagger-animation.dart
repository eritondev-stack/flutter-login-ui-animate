import 'dart:async';

import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({this.controller})
      : buttonSqueeze = Tween(begin: 350.0, end: 50.0).animate(
            CurvedAnimation(parent: controller, curve: Interval(0.0, 0.150))),
        buttonZoomOut = Tween(begin: 50.0, end: 1000.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.3, 1, curve: Curves.linearToEaseOut)));

  final Animation<double> buttonSqueeze;
  final Animation<double> buttonZoomOut;

  Widget buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 65),
      child: InkWell(
          onTap: () {
            controller.forward();
            Timer(Duration(seconds: 3), () {});
          },
          child: Hero(
              tag: 'Fade',
              child: buttonZoomOut.value <= 50
                  ? Container(
                      width: buttonSqueeze.value,
                      height: 47,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff03DDD2), Color(0xff03AFF2)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: buildInside(context),
                    )
                  : Container(
                      width: buttonZoomOut.value,
                      height: buttonZoomOut.value,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff03DDD2), Color(0xff03AFF2)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Center(
                        child: Text(
                          "Page Home em construção...",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))),
    );
  }

  Widget buildInside(BuildContext context) {
    if (buttonSqueeze.value > 75) {
      return Text(
        "Entrar",
        style: TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 0.5),
      );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 6,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: buildAnimation);
  }
}
