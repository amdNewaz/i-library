import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/admin_screens/register_book/registerBook.dart';

class requests extends StatefulWidget {
  @override
  _requestsState createState() => _requestsState();
}

class _requestsState extends State<requests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(10, 50, 10, 10)),
              Text(
                "Requests",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
              RaisedButton.icon(
                onPressed: null,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                label: Text(
                  "User Name 1",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                color: Colors.white,
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
              RaisedButton.icon(
                onPressed: null,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                label: Text(
                  "User Name 2",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                color: Colors.white,
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
              RaisedButton.icon(
                onPressed: null,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                label: Text(
                  "User Name 3",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                color: Colors.white,
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
              RaisedButton.icon(
                onPressed: null,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                label: Text(
                  "User Name 4",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
