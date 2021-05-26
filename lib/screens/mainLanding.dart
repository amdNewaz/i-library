import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class mainLandingPage extends StatefulWidget {
  @override
  _mainLandingPageState createState() => _mainLandingPageState();
}

class _mainLandingPageState extends State<mainLandingPage> {
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildContainer_Buttons('Register as Student', 1),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildContainer_Buttons('Login as Student', 1),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      buildContainer_Buttons('Login as system adminstrator', 1),
                ),
              ],
            ),
          )),
    );
  }

  Container buildContainer_Buttons(text, num) {
    return Container(
      width: 300,
      height: 50,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 15),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          primary: Colors.grey[300],
          onPrimary: Colors.black87,
          side: BorderSide(color: Colors.grey[800], width: 2),
        ),
        onPressed: () {
          print('Pressed');
        },
      ),
    );
  }
}
