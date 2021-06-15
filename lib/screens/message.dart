import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class message extends StatefulWidget {
  @override
  _messageState createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Center(
          child: Column(children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 100, 10, 10)),
            Text(
              "Congratulations! Your account has been created.",
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
