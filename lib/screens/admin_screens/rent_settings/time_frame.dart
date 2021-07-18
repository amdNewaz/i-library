import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class TimeFrame extends StatefulWidget {
  @override
  Time createState() => Time();
}

class Time extends State<TimeFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Center(
          child: Column(children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 80, 10, 10)),
            Text(
              "Time Frame",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 10)),
            Text(
              "Start time",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            new Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                DropdownButton<String>(
                  items: <String>['AM', 'PM'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
                SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                    )),
                SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                    )),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 10)),
            Text("End time",
                style: TextStyle(
                  color: Colors.grey,
                )),
            new Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                DropdownButton<String>(
                  items: <String>['AM', 'PM'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
                SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                    )),
                SizedBox(
                    width: 100,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
