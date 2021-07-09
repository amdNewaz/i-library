import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_library/models/settings.dart';
import 'package:i_library/screens/admin_screens/rent_settings/rent_settings.dart';

class Body extends StatelessWidget {
  const Body(ListView listView, {state}) : _state = state;
  final RentSettingScreen _state;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildTextLisTile(
          title1: "Borrow Book Limit",
          subtitle1: "The amount of books that be borrowed at a time.",
          // index: index,//_state.borrowLimit.length,
          screen: this, //_state,
        ),
        _buildTextLisTile(
          title1: "Rent period",
          subtitle1: "Total days customer can keep book.",
          //index: index,//_state.rentPeriod.length,
          screen: this, //_state,
        )
      ],
    );
  }

  ListTile _buildTextLisTile(
      {title1, subtitle1, index, screen, value1, value2}) {
    return ListTile(
      title: Text(title1),
      subtitle: Text(subtitle1),
      trailing: _DropdownButtonBorrow(index: index, screen: screen),
    );
  }
}

class _DropdownButtonBorrow extends StatefulWidget {
  final int index;
  final RentSettingScreen screen;
  // dynamic value1;
  //dynamic value2;
  _DropdownButtonBorrow({this.index, this.screen});

  @override
  __DropdownButtonBorrowState createState() => __DropdownButtonBorrowState();
}

class __DropdownButtonBorrowState extends State<_DropdownButtonBorrow> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: widget.screen.borrowLimit[widget
          .index], //widget.value1[widget.index], //widget._state.borrowLimit[widgit.index]
      items:
          widget.screen.borrowLimit //widget.value1 //widget._state.borrowLimit
              .map(
                (borrowLimit) => DropdownMenuItem(
                  value: borrowLimit, //borrowLimit.value
                  child: Text("${borrowLimit.value}"),
                ),
              )
              .toList(),
      onChanged: (newValue) => setState(() => widget
              .screen.borrowLimit[widget.index] =
          newValue), //widget.value1[widget.index] =//widget._state.borrowLimit[widgit.index]
    );
  }
}

class _DropdownButtonRent extends StatefulWidget {
  final int index;
  final RentSettingScreen screen;
  // dynamic value1;
  //dynamic value2;
  _DropdownButtonRent({this.index, this.screen});

  @override
  __DropdownButtonRentState createState() => __DropdownButtonRentState();
}

class __DropdownButtonRentState extends State<_DropdownButtonRent> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: widget.screen.rentPeriod[widget
          .index], //widget.value1[widget.index], //widget._state.borrowLimit[widgit.index]
      items:
          widget.screen.rentPeriod //widget.value1 //widget._state.borrowLimit
              .map(
                (rentPeriod) => DropdownMenuItem(
                  value: rentPeriod, //borrowLimit.value
                  child: Text("${rentPeriod.days}"),
                ),
              )
              .toList(),
      onChanged: (newValue) => setState(() => widget
              .screen.rentPeriod[widget.index] =
          newValue), //widget.value1[widget.index] =//widget._state.borrowLimit[widgit.index]
    );
  }
}
