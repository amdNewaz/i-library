import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';

class requestInput extends StatefulWidget {
  @override
  _requestInputState createState() => _requestInputState();
}

class _requestInputState extends State<requestInput> {
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
                "User Name 1",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Book Title',
                ),
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the book title';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Author',
                ),
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the author name';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'ISBN',
                ),
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the ISBN';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Genre',
                ),
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the genre';
                  }
                  return null;
                },
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Book Condition',
                ),
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the book condition';
                  }
                  return null;
                },
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text(
                      "Approve",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    color: Colors.white,
                    splashColor: Colors.white,
                    onPressed: null,
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                  RaisedButton(
                    child: Text(
                      "Decline",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    color: Colors.white,
                    splashColor: Colors.white,
                    onPressed: null,
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
