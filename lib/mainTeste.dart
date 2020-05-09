import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              child: Text('Page2'),
              onPressed: () => Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: Duration(seconds: 2),
                      pageBuilder: (_, __, ___) => Page2())),
            ),
            Hero(tag: 'home', child: Icon(Icons.home))
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'home',
          child: Icon(
            Icons.home,
          ),
        ),
      ),
    );
  }
}