//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:i_library/screens/admin_screens/adminAppBar.dart';
//import 'package:i_library/screens/admin_screens/rent_settings/rent_main';
import 'package:i_library/screens/admin_screens/rent_settings/rent_settings.dart';
import 'dart:ui';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/admin_screens/overdues/overdues.dart';
import 'package:i_library/screens/admin_screens/register_book/registerBook.dart';
import 'package:i_library/screens/admin_screens/books/bookList.dart';
import 'package:i_library/screens/student_screens/profile.dart';
import 'package:i_library/services/rentsetting/setting_service_rest.dart';

//class MenuDrawer extends StatefulWidget {
//  @override
//  Menu createState() => Menu();
//}

//class Menu extends State<MenuDrawer> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: appBar(),
//      // body: Center(child: Text('My Page!')),
//      drawer: DrawerCode(),
//    );
//  }
//}
class drawer extends StatefulWidget {
  String email;
  drawer(this.email);
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      DrawerHeader(
          child: Container(
              color: Colors.blueGrey,
              child: Text(
                'Menu',
                style: TextStyle(
                    fontSize: 20.0,
                    //fontFamily: 'Roboto',
                    color: Colors.white),
              ))),
      ListTile(
        leading: Icon(Icons.settings_applications_rounded),
        title: Text('  Profile'),
        onTap: () {
          //Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Profile(widget.email)));
        },
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.settings_applications_rounded),
        title: Text('   Overdues'),
        onTap: () {
          //Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OverDue()));
        },
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.settings_applications_rounded),
        title: Text('   Register Book'),
        onTap: () {
          //Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => registerBook()));
        },
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.settings_applications_rounded),
        title: Text('   Books'),
        onTap: () {
          //Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => bookList()));
        },
      ),
    ]));
  }
}
