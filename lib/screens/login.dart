import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildSignUpFields('Email', "Enter your email", 1),
              buildSignUpFields("Password", "Enter your password", 1),
              Padding(padding: EdgeInsets.all(10.0)),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
              RaisedButton(
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                color: Colors.white,
                splashColor: Colors.white,
                onPressed: null,
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildSignUpFields(lebel, hint, num) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
      child: TextField(
        decoration: InputDecoration(
          labelText: lebel,
          border: OutlineInputBorder(),
          hintText: hint,
        ),
      ),
    );
  }
}
