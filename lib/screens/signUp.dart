import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildSignUpFields('Full Name', "Enter your name", 1),
              buildSignUpFields('Full Name', "Enter your name", 1),
              buildSignUpFields('Full Name', "Enter your name", 1),
              buildSignUpFields('Full Name', "Enter your name", 1),
              buildSignUpFields('Full Name', "Enter your name", 1),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildSignUpFields(lebel, hint, num) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
