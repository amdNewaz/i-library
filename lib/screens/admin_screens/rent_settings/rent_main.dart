import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/admin_screens/adminAppBar.dart';
import 'time_frame.dart';
import 'rent_period.dart';
import 'borrow_book.dart';

class Rent2 extends StatefulWidget {
  @override
  RentSetting createState() => RentSetting();

  static Route route() => MaterialPageRoute(builder: (context) => Rent2());
}

class RentSetting extends State<Rent2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: adminAppBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 40, top: 20, right: 20, bottom: 20),
        child: Column(children: [
          /////////////////
          /// Outlined Button #1
          OutlinedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TimeFrame()));
            },
            icon: Icon(Icons.hourglass_bottom),
            label: Text(
              'Time Frame',
              style: TextStyle(color: Colors.blue, fontSize: 22),
            ),
            style: OutlinedButton.styleFrom(
                //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                //elevation: 22,
                //backgroundColor: Colors.orange,
                padding:
                    EdgeInsets.only(left: 80, top: 20, right: 80, bottom: 20),
                minimumSize: Size(100, 50)),
          ),

          /// Outlined Button #2 with style property
          OutlinedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BorrowBook()));
            },
            icon: Icon(Icons.book),
            label: Text(
              'Book Borrow Limit',
              style: TextStyle(color: Colors.blue, fontSize: 22),
            ),
            style: OutlinedButton.styleFrom(
                //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                //elevation: 22,
                //backgroundColor: Colors.orange,
                padding:
                    EdgeInsets.only(left: 50, top: 20, right: 50, bottom: 20),
                minimumSize: Size(100, 50)),
          ),

          OutlinedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RentPeriod()));
            },
            icon: Icon(Icons.time_to_leave_outlined),
            label: Text(
              'Book Rent Period',
              style: TextStyle(color: Colors.blue, fontSize: 22),
            ),
            style: OutlinedButton.styleFrom(
                //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                //elevation: 22,
                //backgroundColor: Colors.orange,
                padding:
                    EdgeInsets.only(left: 50, top: 20, right: 60, bottom: 20),
                minimumSize: Size(100, 50)),
          ),
          ///////////////////
        ]),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.grey,
          child: Text('back'),
          shape: RoundedRectangleBorder()),
    );
  }
}
