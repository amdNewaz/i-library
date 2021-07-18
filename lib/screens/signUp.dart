import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_library/screens/admin_screens/admin_home.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/models/users.dart';
import 'package:i_library/services/user_services.dart';

import 'dart:async';

class signUp extends StatefulWidget {
  static Route route() => MaterialPageRoute(builder: (context) => signUp());

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  String SelectedUniversity;
  String SelectedNationality;
  String name, address, password;
  int contact;
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController birthdayController = TextEditingController();
  List<String> countryList = ["Indonesia", "Bangladesh", "India", "Pakistan"];

  void addUser(User uzr) async {
    if (uzr != null) {
      final User _uzr = await UserService.addUser(uzr);

      setState(() {});
    }
  }
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
              buildSignUpFields('Address', "Enter your name", 2),
              Row(
                children: [
                  SizedBox(
                    width: wid / 2,
                    child:
                        buildSignUpFields('PhoneNumber', "Enter your name", 3),
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
                            hint: Text("Select your University"),
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
              buildSignUpFields('Password', "Enter your name", 4),
              RaisedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                color: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  print(name + address + password);
                  setState(() {
                    User _user = new User(
                        name,
                        address,
                        password,
                        SelectedNationality,
                        SelectedUniversity,
                        address,
                        contact);
                    addUser(_user);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdminHome(_user)));
                  });
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
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          labelText: lebel,
          border: OutlineInputBorder(),
        ),
        onChanged: (String value) {
          setState(() {
            if (num == 1) {
              name = value;
            }
            if (num == 2) {
              address = value;
            }
            if (num == 3) {
              contact = int.parse(value);
            }
            if (num == 4) {
              password = value;
            }
          });
        },
      ),
    );
  }
}
