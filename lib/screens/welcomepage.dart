import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class welcomepage extends StatefulWidget {
  @override
  _welcomepageState createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: appBar(),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Container(
                    width: 200,
                    height: 200,
                    child: ClipOval(
                        child: Image.asset(
                      "assests/images/lib.gif",
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
              ],
            ),
          )),
