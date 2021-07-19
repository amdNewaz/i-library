import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class bookRequest extends StatefulWidget {
  @override
  _bookRequestState createState() => _bookRequestState();
}

class _bookRequestState extends State<bookRequest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildSignUpFields('Book Name', "Enter the book name", 1),
              buildSignUpFields("Author's  Name", "Enter the author's name", 1),
              buildSignUpFields('ISBN', "Enter the ISBN", 1),
              buildSignUpFields('Genre', "Enter the genre", 1),
              buildSignUpFields(
                  'Book Condition', "Enter the book condition", 1),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton.icon(
                onPressed: null,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                padding: EdgeInsets.all(10.0),
                label: Text(
                  "Upload Image",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                color: Colors.white,
              ),
              Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
              RaisedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                color: Colors.white,
                splashColor: Colors.white,
                onPressed: null,
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
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
