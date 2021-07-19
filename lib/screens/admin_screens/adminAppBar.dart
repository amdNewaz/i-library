import 'package:flutter/material.dart';
import 'package:i_library/screens/admin_screens/admin_home.dart';
import 'package:i_library/screens/admin_screens/menu_drawer.dart';

class adminAppBar extends StatefulWidget implements PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(100.0);

  @override
  _appBar createState() => _appBar();
  final adHome _state;
  const adminAppBar({state}) : _state = state;
}

class _appBar extends State<adminAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      title: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "I-LIBRARY",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.notifications_active, size: 30),
            ],
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20),
      )),
    );
  }
}
