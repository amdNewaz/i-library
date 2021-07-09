import 'package:flutter/material.dart';
import 'package:i_library/main.dart';
import 'package:i_library/models/settings.dart';
import 'package:i_library/screens/admin_screens/admin_home.dart';
import 'package:i_library/screens/admin_screens/rent_settings/borrow_book.dart';
//import 'package:i_library/screens/admin_screens/rent_settings/rent_main';
import 'package:i_library/screens/admin_screens/rent_settings/rent_period';
import 'package:i_library/screens/admin_screens/rent_settings/rent_settings.dart';
import 'package:i_library/screens/admin_screens/rent_settings/time_frame.dart';

Route<dynamic> createRoute(settings) {
  switch (settings.name) {
    case '/':
    case '/Adminhome':
      return AdminHome.route();

    case '/RentSettings':
      return MaterialPageRoute(
        builder: (context) => RentSettingScreen(
            borrowLimit: settings.arguments['borrowLimit'],
            rentPeriod: settings.arguments['rentPeriod']),
      );

      //case '/TimeFrame':
      //return MaterialPageRoute(builder: (context) => TimeFrame());
      return null;
  }
}
