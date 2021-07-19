import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/models/users.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/services/user_services.dart';
import 'package:i_library/screens/admin_screens/adminAppBar.dart';

import 'menu_drawer.dart';

class AdminHome extends StatefulWidget {
  static User uzr;
  User _uzr;
  static int idx;
  @override
  AdminHome(User u) {
    uzr = u;
    _uzr = u;
  }
  static Route route() =>
      MaterialPageRoute(builder: (context) => AdminHome(uzr));

  @override
  adHome createState() => adHome();
}

class adHome extends State<AdminHome> {
  List<User> _user = List<User>();

  /*void refresh() {
    if (_user != null) {
      UserService.fetchUser(_user.id);
      setState(() {});
    }
  }

  void registerUser(User uzr) async {
    if (uzr != null) {
      final User _user = await UserService.addUser(uzr);
      user(_user);
      setState(() {});
    }
  }

  void removeUser(User uzr) async {
    await UserService.removeUser(uzr);
    setState(() {});
  }*/
  void initState() {
    UserService.fetchUser(1).then((value) {
      setState(() {
        _user.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: adminAppBar(state: this),
      body: Container(
        //if user !=null
        padding: EdgeInsets.all(30),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 100, 10, 10)),
            Text(
              "Welcome to the System ${widget._uzr.name}!",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
      drawer: DrawerCode(),
    );
  }
}
