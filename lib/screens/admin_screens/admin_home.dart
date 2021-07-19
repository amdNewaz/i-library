import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/models/users.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/services/rentsetting/setting_service_rest.dart';
import 'package:i_library/services/user_services.dart';
import 'package:i_library/screens/admin_screens/adminAppBar.dart';

import 'menu_drawer.dart';

class AdminHome extends StatefulWidget {
  @override
  adHome createState() => adHome();
  static Route route() => MaterialPageRoute(builder: (context) => AdminHome());
}

class adHome extends State<AdminHome> {
  @override
  User _user;
  get user => _user;
  set user(uzr) => _user = uzr;
  void refresh() {
    if (_user != null) {
      UserService.getUser(_user.id);
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
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: adminAppBar(),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 100, 10, 10)),
            Text(
              "Welcome to the System Admin!",
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
