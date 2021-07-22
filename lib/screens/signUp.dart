import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i_library/models/users.dart';
import 'package:i_library/screens/appBar.dart';

import 'dart:async';

import 'package:i_library/services/user_services.dart';

class signUp extends StatefulWidget {
  const signUp({Key key}) : super(key: key);
  static Route route() => MaterialPageRoute(builder: (context) => signUp());

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  // Platform messages are asynchronous, so we initialize in an async method.

  Widget build(BuildContext context) {
    String SelectedUniversity;
    String SelectedNationality;
    TextEditingController name = TextEditingController();

    TextEditingController password = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController address = TextEditingController();
    // TextEditingController email = TextEditingController();
    TextEditingController nationality = TextEditingController();
    User user = new User(
        id: 0,
        name: "",
        address: "",
        contact: 0,
        email: "",
        nationality: "",
        password: "");
    void fun() {
      setState(() {
        user.name = name.text;
        user.password = password.text;
        user.email = email.text;
        //  user.contact = int.parse(phone.text);
        user.nationality = nationality.text;
        user.address = address.text;
      });
    }

    return Container(
      child: Scaffold(
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildSignUpFields('Full Name', "Enter your name", name),
              buildSignUpFields('email', "Enter your email", email),
              buildSignUpFields(
                  'PhoneNumber', "Enter your Phone Number", phone),
              buildSignUpFields('nationality', "Enter your natio", nationality),
              buildSignUpFields('address', "Enter your address", address),
              buildSignUpFields('Password', "Enter your Password", password),
              Container(
                width: 100,
                height: 50,
                child: FlatButton(
                  onPressed: () {
                    fun();
                    UserService.addUser(user);
                    print(user);
                    Navigator.pop(context);
                  },
                  child: Text("Sign up"),
                  textColor: Colors.black,
                  color: Colors.blue,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildSignUpFields(lebel, hint, TextEditingController con) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        controller: con,
        decoration: InputDecoration(
          hintText: hint,
          labelText: lebel,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
