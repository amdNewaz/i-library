import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/admin_screens/overdues/email_sent.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/admin_screens/overdues/overdues.dart';
import 'email_sent.dart';

class UserDue extends StatelessWidget {
  final Choice _choice;

  //const UserDue({this.stat,this.choice});

  const UserDue({choice}) : _choice = choice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        Padding(padding: EdgeInsets.fromLTRB(10, 40, 10, 10)),
        Row(children: [
          Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
          Text("Amount due:",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          Text(
            "XXrm",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15,
            ),
          )
        ]),
        Row(children: [
          Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
          Text("Borrower",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 10)),
          Text("${_choice.title}",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ))
        ]),
        Row(children: [
          Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
          Text("Email:",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          Text("$_choice.use",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ))
        ]),
        Row(children: [
          Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
          Text("Contact: ",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          Text("+60XXXXXXXXX",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ))
        ]),
        Row(children: [
          Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
          Text("Book Title: ",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          Text(" The _____ of the _____",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ))
        ]),
        Row(children: [
          Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
          Text("Rent Date: ",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          Text(" xx-xx-xx",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ))
        ]),
        Row(children: [
          Padding(padding: EdgeInsets.fromLTRB(5, 40, 40, 10)),
          Text("Submission: ",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          Text(" Overdue by x days",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ))
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlineButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OverDue()));
            },
            child: Text(' Back '),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Email()));
            },
            color: Colors.blueAccent,
            child: Text(
              ' Send Reminder ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ])
      ]),
    );
  }
}
