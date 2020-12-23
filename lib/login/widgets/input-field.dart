import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField({this.hint, this.obscure, this.icon});

  final String hint;
  final bool obscure;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xfFf1f2f6),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 0,
                  spreadRadius: 0,
                  offset: Offset(1, 1))
            ],
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 9,
                child: TextField(
                  style: TextStyle(color: Color(0xff2f3542), fontSize: 23),
                  obscureText: obscure,
                  decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 23),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(14, 0, 0, 0)),
                ),
              ),
              Expanded(
                flex: 2,
                child: Icon(
                  icon,
                  size: 40,
                  color: Color(0xff9b59b6),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
