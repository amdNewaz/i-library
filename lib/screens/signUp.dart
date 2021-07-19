import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_library/screens/appBar.dart';

import 'dart:async';

class signUp extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (context) => signUp());

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  String SelectedUniversity;
  String SelectedNationality;

  List<String> countryList = ["Indonesia", "Bangladesh", "India", "Pakistan"];

  // Platform messages are asynchronous, so we initialize in an async method.

  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Container(
      child: Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildSignUpFields('Full Name', "Enter your name", 1),
              buildSignUpFields('Address', "Enter your name", 1),
              Row(
                children: [
                  SizedBox(
                    width: wid / 2,
                    child:
                        buildSignUpFields('PhoneNumber', "Enter your name", 1),
                  ),
                  SizedBox(
                      width: wid / 4,
                      child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                          child: DropdownButton<String>(
                            focusColor: Colors.white,
                            value: SelectedUniversity,
                            style: TextStyle(color: Colors.white),
                            iconEnabledColor: Colors.black,
                            items: <String>["UTM", "UITM", "UPM", "USM", "UKM"]
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value,
                                    style: TextStyle(color: Colors.black)),
                              );
                            }).toList(),
                            hint: Text("Select your nationality"),
                            onChanged: (String value) {
                              setState(() {
                                SelectedUniversity = value;
                              });
                            },
                          ))),
                ],
              ),
              SizedBox(
                  width: wid / 4,
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: DropdownButton<String>(
                        focusColor: Colors.white,
                        value: SelectedNationality,
                        style: TextStyle(color: Colors.white),
                        iconEnabledColor: Colors.black,
                        items: <String>['Pak', 'Bang', 'Ind', 'usa', 'Uk']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value,
                                style: TextStyle(color: Colors.black)),
                          );
                        }).toList(),
                        hint: Text("Select your nationality"),
                        onChanged: (String value) {
                          setState(() {
                            SelectedNationality = value;
                          });
                        },
                      ))),
              buildSignUpFields('Password', "Enter your name", 1),
            ],
          ),
        ),
      ),
    );
  }

  Padding buildSignUpFields(lebel, hint, num) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          labelText: lebel,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
