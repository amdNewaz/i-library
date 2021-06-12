import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:i_library/screens/admin_screens/overdues/user_due_info.dart';
import 'package:i_library/screens/appBar.dart';
import 'package:flutter/material.dart';
import 'user_due_info.dart';

class OverDue extends StatefulWidget {
  @override
  Over createState() => Over();
}

class Over extends State<OverDue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
          child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(30.0),
              children: List.generate(choices.length, (index) {
                return Center(
                  child: ChoiceCard(
                    choice: choices[index],
                    item: choices[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UserDue(choice: choices[index])),
                      );
                    },
                  ),
                );
              }))),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

final choices = List<Choice>.generate(
  20,
  (i) => Choice(title: 'User Name #${i + 1}', icon: Icons.person),
);

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Card(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              new Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.topLeft,
                  child: Icon(
                    choice.icon,
                    size: 40.0,
                    color: textStyle.color,
                  )),
              new Expanded(
                  child: new Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.topLeft,
                child: Text(
                  choice.title,
                  style: null,
                  textAlign: TextAlign.left,
                  //maxLines: 5,
                ),
              )),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )),
    );
  }
}
