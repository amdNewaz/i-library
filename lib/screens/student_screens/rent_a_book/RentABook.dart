import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/student_screens/register_a_book/SubmitApproval.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/student_screens/rent_a_book/rentingDetails.dart';

class rentABook extends StatefulWidget {
  @override
  _RentABookState createState() => _RentABookState();
}

class _RentABookState extends State<rentABook> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: appBar(),
            body: Container(
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: TextField(
                    onChanged: null,
                    decoration: InputDecoration(
                        labelText: "Search",
                        hintText: "Search for book name, author name, ISBN",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)))),
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "Renting Details",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  color: Colors.blue,
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => rentingDetails()));
                  },
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                ),
              ]),
            )));
  }
}
