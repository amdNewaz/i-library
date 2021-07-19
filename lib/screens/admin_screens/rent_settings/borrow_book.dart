/*import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/models/settings.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:i_library/screens/admin_screens/rent_settings/rent_main';

class BorrowBook extends StatefulWidget {
//static Route route() => MaterialPageRoute(builder: (context) => BorrowBook());

  static Route route({data}) =>
      MaterialPageRoute(builder: (context) => BorrowBook(data: data));

  //final bool _isEditing;
  final Setting _data;

  // get isEditing => _isEditing;

  get data => _data;
  BorrowBook({data})
      : //_isEditing = isEditing,
        _data = data;

  @override
  Borrow createState() => Borrow();
}

class Borrow extends State<BorrowBook> {
  var _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: Center(
          child: Column(children: [
            Padding(padding: EdgeInsets.all(60)),
            Text(
              "Book Borrow Limit",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            new DropdownButton<String>(
              focusColor: Colors.white,
              value: _chosenValue,
              //elevation: 5,
              style: TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              items: <String>[
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                  // onTap: (value) {widget.data.setMaxLimit(value);},
                );
              }).toList(),
              hint: Text(
                "Set Max Limit--",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String value) {
                setState(() {
                  _chosenValue = value;
                  //widget._data.setMaxLimit(_chosenValue);
                });
              },
            ),
          ]),

          //floatingActionButton:
          //FloatingActionButtonLocation.miniStartDocked,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context, widget.data);

            //Navigator.push(
            //    context, MaterialPageRoute(builder: (context) => Rent2()));
          },
          backgroundColor: Colors.blue,
          child: Text('   Done    '),
          shape: RoundedRectangleBorder()),
    );
  }
}

*/