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

  ListTile buildListTiledrawer(text, icon, BuildContext context, num) {
    return ListTile(
        leading: Icon(icon),
        title: Text(text),
        onTap: () async {
          if (num == 2) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => tutor_request(widget.student)),
            // );
          }
          if (num == 3) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => StudentProfile(widget.student)),
            // );

          }
          if (num == 4) {
            // Student returnData = await Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => EditStudentProfile(widget.student)),
            // );
            // if(returnData != null){
            //   setState(() => widget.student[0]  = returnData);
            // }
          }
          if (num == 5) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => AboutDeveloper()),
            // );
          }
        });
  }
}
