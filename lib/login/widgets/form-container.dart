import 'package:animate/login/widgets/input-field.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
            child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Column(
                children: <Widget>[
                  InputField(
                      hint: "Username", obscure: false, icon: Icons.person),
                  InputField(hint: "Password", obscure: true, icon: Icons.lock)
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
