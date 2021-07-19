import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_library/models/settings.dart';
import 'package:i_library/screens/admin_screens/adminAppBar.dart';
import 'package:i_library/screens/admin_screens/admin_home.dart';
import 'package:i_library/screens/admin_screens/menu_drawer.dart';
import 'package:i_library/services/rentsetting/setting_service_rest.dart';

class RentSettingScreen extends StatefulWidget {
  int borrowLimit;
  int rentPeriod;
  //dynamic listservices;
  //RentSettingScreen();
  final List<int> dropbrowlimit = [4, 6, 10];
  final List<int> droprent = [14, 28, 10];
  //final RentSettingScreen screen;
  _rentState createState() => _rentState();
  static Route route() =>
      MaterialPageRoute(builder: (_) => RentSettingScreen());
}

// RentSettingScreen({this.borrowLimit, this.rentPeriod, this.screen, List});
class _rentState extends State<RentSettingScreen> {
  List<Settings> _settings;

  get borrowLimit => null;
  void initState() {
    SettingServiceRest.fetchSettings().then((value) {
      setState(() {
        _settings.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: adminAppBar(),
      body: ListView(
        children: [
          ListTile(
            title: Text("Borrow Book Limit"),
            subtitle: Text("The amount of books that be borrowed at a time."),
            trailing: DropdownButton(
              value: widget.borrowLimit,
              items: <int>[4, 5, 6].map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value, //borrowLimit.value
                  child: Text("$value"),
                );
              }).toList(),
              onChanged: (newValue) =>
                  setState(() => widget.borrowLimit = newValue),
            ),
          ),
          ListTile(
            title: Text("Rent period"),
            subtitle: Text("Total days customer can keep book."),
            trailing: DropdownButton(
              value: widget.rentPeriod,
              items: <int>[10, 14, 21].map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value, //borrowLimit.value
                  child: Text("$value"),
                );
              }).toList(),
              onChanged: (newValue) =>
                  setState(() => widget.rentPeriod = newValue),
            ),
          ),
        ],
      ),
      drawer: DrawerCode(),
    );
  }
}
