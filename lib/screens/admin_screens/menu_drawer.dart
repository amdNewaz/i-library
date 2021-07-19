//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:i_library/screens/admin_screens/adminAppBar.dart';
import 'package:i_library/screens/admin_screens/books/bookList.dart';
import 'package:i_library/screens/admin_screens/rent_settings/rent_main.dart';
import 'dart:ui';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/admin_screens/overdues/overdues.dart';
import 'package:i_library/screens/admin_screens/register_book/registerBook.dart';
import 'package:i_library/screens/admin_screens/books/bookDetails.dart';

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

class DrawerCode extends StatelessWidget {
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
        title: Text('   Rent Settings'),
        onTap: () {
          //Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Rent2()));
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
