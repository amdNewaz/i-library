import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/admin_screens/adminAppBar.dart';

class AdminHome extends StatefulWidget {
  @override
  adHome createState() => adHome();
}

class adHome extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: adminAppBar(),
      body: Container(
        child: Center(
          child: Column(children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 100, 10, 10)),
            Text(
              "Welcome to the System Admin!",
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
