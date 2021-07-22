import 'package:flutter/material.dart';
import 'package:i_library/screens/message.dart';
import 'package:i_library/screens/student_screens/welcomepage.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  Map<String, dynamic> res;

  bool visible = false;

  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;
  Future createAlbum() async {
    // fetching login data
    var response = await http.post(
      Uri.parse('https://i-mapness.herokuapp.com/user'), //Api URL
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
          <String, String>{'email': username.text, "password": password.text}),
    );
    print(response.statusCode);
    res = jsonDecode(response.body); // for testing
  }

  LoginCheck() async {
    await createAlbum();
    setState(() {
      visible = true;
    });

    final prefs = await SharedPreferences.getInstance();

    try {
      if (res['code'] == "001") {
        // var response = json.decode(res.body);
        if (res['id'] == "You are logged in") {
          print(res);

          prefs.setString(
              "email", username.text); //storing token for future use
          setState(() {
            visible = false;
          });

          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => message(username.text)),
          );
        } else {
          setState(() {
            visible = false;
          });
          showAlertDialog(context, 'Incorrect username or password');
        }
      }
    } catch (e) {}
  }

  showAlertDialog(BuildContext context, String err) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () => Navigator.pop(context),
    );
    AlertDialog alert = AlertDialog(
      title: Text("Error"),
      content: Text(err),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image.asset('assests/images/lib.gif', scale: 1.5,),
              Padding(
                padding: const EdgeInsets.all(30.0),
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
              Container(
                padding: EdgeInsets.all(40),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Text(
                        'I-Library',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextFormField(
                          controller: username,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                              labelText: 'Username'),
                          validator: Validators.compose([
                            Validators.required('Username is required'),
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextFormField(
                          controller: password,
                          obscureText: _isHidden,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey)),
                            labelText: 'Password',
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),
                          validator: Validators.compose(
                              [Validators.required('Password is required')]),
                        ),
                      ),
                      Visibility(
                          maintainSize: true,
                          maintainAnimation: true,
                          maintainState: true,
                          visible: visible,
                          child: Container(
                              //child: CircularProgressIndicator()
                              )),
                      FlatButton(
                        onPressed: () {},
                        textColor: Colors.blue,
                        child: Text('Forgot Password'),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        child: FlatButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              print(username.text);
                              print(password.text);
                              print('success');
                              LoginCheck(); // calling login method
                            }
                          },
                          child: Text("Sign in"),
                          textColor: Colors.white,
                          color: Colors.red,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
