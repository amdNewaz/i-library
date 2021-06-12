import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/admin_screens/rent_settings/rent_main.dart';

class RentPeriod extends StatefulWidget {
  @override
  Period createState() => Period();
}

class Period extends State<RentPeriod> {
  var _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Center(
          child: Column(children: [
            Padding(padding: EdgeInsets.all(60)),
            Text(
              "Book Rent Period",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            new DropdownButton<String>(
              focusColor: Colors.white,
              value: _chosenValue,
              //elevation: 5,
              style: TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              items: <String>[
                '7 days ',
                '14 days',
                '24 days',
                '30 days',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: Text(
                "Set Max Limit--",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String value) {
                setState(() {
                  _chosenValue = value;
                });
              },
            ),
          ]),

          //floatingActionButton:
          //FloatingActionButtonLocation.miniStartDocked,
        ),
      ),

      //floatingActionButton:
      //FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Rent2()));
          },
          backgroundColor: Colors.blue,
          child: Text('   Done    '),
          shape: RoundedRectangleBorder()),
    );
  }
}
