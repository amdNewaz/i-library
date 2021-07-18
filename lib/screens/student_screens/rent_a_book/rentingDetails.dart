import 'dart:ui';
import 'package:i_library/screens/confirm.dart';
import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class rentingDetails extends StatefulWidget {
  @override
  _rentingDetailsState createState() => _rentingDetailsState();
}

class _rentingDetailsState extends State<rentingDetails> {
  bool value = false;
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
                "Renting Details",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
              SizedBox(
                width: 10,
              ), //SizedBox
              Text(
                'Return within 15 days (overdue fees are RM 10)',
                style: TextStyle(fontSize: 17.0),
              ), //Text
              SizedBox(width: 10), //SizedBox
              /** Checkbox Widget **/
              Checkbox(
                value: this.value,
                onChanged: (bool value) {
                  setState(() {
                    this.value = value;
                  });
                },
              ),
              buildSignUpFields(
                  "Delivery Address", "Enter your delivery address", 1),
              Padding(padding: EdgeInsets.all(10.0)),

              RaisedButton(
                child: Text(
                  "Confirm",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.blue,
                splashColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => confirm()));
                },
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildSignUpFields(lebel, hint, num) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
      child: TextField(
        decoration: InputDecoration(
          labelText: lebel,
          border: OutlineInputBorder(),
          hintText: hint,
        ),
      ),
    );
  }
}
