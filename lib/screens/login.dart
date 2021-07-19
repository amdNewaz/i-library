import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/services/user_services.dart';
import 'package:i_library/screens/admin_screens/admin_home.dart';

class login extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (context) => login());
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String _email;
  String _pass;
  void userLogin() {}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildSignUpFields('Email', "Enter your email", 1),
              buildSignUpFields("Password", "Enter your password", 2),
              Padding(padding: EdgeInsets.all(10.0)),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
              RaisedButton(
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                color: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  onLoginPressed(context);
                },
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
          onChanged: (String value) {
            if (num == 1) {
              _email = value;
            }
            if (num == 2) {
              _pass = value;
            }
          }),
    );
  }

  void onLoginPressed(context) async {
    final _user = await UserService.getUserByEmailAndPassword(
        email: _email, password: _pass);

    if (_user == null) {
      print("Error");
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AdminHome(_user)));
    }
  }
}
