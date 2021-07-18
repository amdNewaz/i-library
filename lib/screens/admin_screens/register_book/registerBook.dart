import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class registerBook extends StatefulWidget {
  @override
  _registerBookState createState() => _registerBookState();
}

class _registerBookState extends State<registerBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(10, 80, 10, 10)),
              Text(
                "Register Book",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
              RaisedButton(
                child: Text(
                  "Registration Request",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                color: Colors.white,
                splashColor: Colors.white,
                onPressed: null,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
              RaisedButton(
                child: Text(
                  "Add Book",
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
}
