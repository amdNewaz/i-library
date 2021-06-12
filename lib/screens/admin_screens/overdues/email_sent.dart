import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  @override
  EmailSent createState() => EmailSent();
}

class EmailSent extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Center(
          child: Column(children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 100, 10, 10)),
            Text(
              "Email Sent!",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
    );
  }
}
