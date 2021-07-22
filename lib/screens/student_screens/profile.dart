import 'dart:convert';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:i_library/models/users.dart';
import 'package:wc_form_validators/wc_form_validators.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  String email;
  Profile(this.email);
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  //Fetching token

  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 0), () => fetchData()); //onpage load
    });
  }

  User user; //model
//fetching data from api
  Future<void> fetchData() async {
    var result = await http.get(
      Uri.parse('https://i-mapness.herokuapp.com/all-user/${widget.email}'),
      // Send authorization headers to the backend.
    );

    var data = await jsonDecode(result.body)['data'];
    if (data != null) {
      setState(() {
        //creating a user data object
        user = User.fromJson(data);
        print(user);
      });
    }
  }

  logOut() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('slogin', false);
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
  }

  // Map<String, dynamic> student;

  TextEditingController name = TextEditingController();

  TextEditingController password = TextEditingController(); //Should be deleted
  TextEditingController address = TextEditingController();
  TextEditingController nationality = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController id = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Image.asset("assests/images/lib.gif"),
          centerTitle: true,
          title: Text("Profile",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          backgroundColor: Colors.white,
          elevation: 20.0,
          actions: [
            IconButton(
                icon: Icon(Icons.logout, color: Color.fromRGBO(255, 0, 63, 1)),
                onPressed: () => {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Log out?"),
                          content: Text("Are you sure want to log out?"),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  logOut(),
                                );
                              },
                            ),
                            FlatButton(
                              child: Text("Cancel"),
                              onPressed: () {
                                fetchData();
                                print(user);
                                Navigator.of(context).pop("Cancel");
                              },
                            ),
                          ],
                        ),
                      ),
                    }),
          ],
        ),
        body:
            profileView() // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget profileView() {
    if (user == null)
      return Center(
        child: CircularProgressIndicator(
          backgroundColor: Color.fromRGBO(255, 0, 63, 1),
          strokeWidth: 3,
        ),
      );
    else {
      return SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 700),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black54),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        Container(height: 12, width: 12)
                      ],
                    ),
                  ),
                  Expanded(
                      child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0.8, 8.0, 0.8),
                              child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    labelText: 'id'),
                                controller: id..text = '${user.id}',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 50,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0.8, 8.0, 0.8),
                              child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    labelText: 'name'),
                                controller: name..text = '${user.name}',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 50,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0.8, 8.0, 0.8),
                              child: TextField(
                                controller: address..text = '${user.email}',
                                enabled: false,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    labelText: 'email'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 50,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0.8, 8.0, 0.8),
                              child: TextField(
                                controller: address..text = '${user.address}',
                                enabled: false,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    labelText: 'address'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 50,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0.8, 8.0, 0.8),
                              child: TextFormField(
                                enabled: false,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    labelText: 'phone'),
                                controller: phone..text = '${user.contact}',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 50,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0.8, 8.0, 0.8),
                              child: TextFormField(
                                enabled: false,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    labelText: 'nationality'),
                                controller: nationality
                                  ..text =
                                      '${user.nationality}', // nationality (int)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 50,
                              width: 100,
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Back'),
                                textColor: Colors.white,
                                color: Colors.red,
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  ))
                ],
              )));
    }
  }

  Future<void> _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
