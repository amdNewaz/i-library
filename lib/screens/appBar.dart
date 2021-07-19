import 'package:flutter/material.dart';

class appBar extends StatefulWidget implements PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(100.0);

  @override
  _appBarState createState() => _appBarState();
}

class _appBarState extends State<appBar> {
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
