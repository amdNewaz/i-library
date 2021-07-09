import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class bookDetails extends StatefulWidget {
  @override
  _bookDetails createState() => _bookDetails();
}

class _bookDetails extends State<bookDetails> {
  void _doNothing() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Column(children: [
          Padding(padding: EdgeInsets.fromLTRB(10, 40, 10, 10)),
          Row(children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
            Text("Book Title:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            Text(
              "The Amazing World of Java",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),
            )
          ]),
          Row(children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
            Text("Author:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 10)),
            Text("Kick Buttowski",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ))
          ]),
          Row(children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
            Text("ISBN:",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            Text("12341569",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ))
          ]),
          Row(children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
            Text("Genre:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            Text("Educational",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ))
          ]),
          Row(children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
            Text("Book Condition :",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            Text("Good",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton.icon(
              onPressed: _doNothing,
              icon: Icon(Icons.circle),
              label: Text("Declince"),
            ),
            ElevatedButton.icon(
              onPressed: _doNothing,
              icon: Icon(Icons.circle),
              label: Text("Approve"),
            )
          ])
        ]),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: _doNothing,
        child: Text('back'),
        mini: true,
        shape: RoundedRectangleBorder(),
      ),
    );
  }
}
