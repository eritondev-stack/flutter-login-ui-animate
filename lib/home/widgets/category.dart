import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {}),
        Text(
          "ESTUDAR",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
        ),
        IconButton(
            color: Colors.white,
            disabledColor: Colors.white30,
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 30,
            ),
            onPressed: () {
              print("Clicado");
            })
      ],
    );
  }
}
