import 'package:flutter/material.dart';
import 'package:i_library/main.dart';
import 'package:i_library/models/settings.dart';
import 'package:i_library/screens/admin_screens/admin_home.dart';
import 'package:i_library/screens/admin_screens/menu_drawer.dart';
import 'package:i_library/screens/admin_screens/rent_settings/borrow_book.dart';
//import 'package:i_library/screens/admin_screens/rent_settings/rent_main';
//import 'package:i_library/screens/admin_screens/rent_settings/rent_period';
import 'package:i_library/screens/admin_screens/rent_settings/rent_settings.dart';
import 'package:i_library/screens/admin_screens/rent_settings/time_frame.dart';
import 'package:i_library/screens/admin_screens/books/bookDetails.dart';
import 'package:i_library/screens/admin_screens/books/bookList.dart';
import 'package:i_library/screens/mainLanding.dart';
import 'package:i_library/services/rentsetting/setting_service_rest.dart';

Route<dynamic> createRoute(settings) {
  switch (settings.name) {
    case '/':
    case '/Adminhome':
      return MaterialPageRoute(builder: (context) => AdminHome());
    // AdminHome.route();

    case '/RentSettings':
      return RentSettingScreen.route();

    case '/BookDetails':
      return BookDetails.route();

    case '/BookList':
      return bookList.route();
    case '/main':
      return mainLandingPage.route();
      //case '/TimeFrame':
      //return MaterialPageRoute(builder: (context) => TimeFrame());
      return null;
  }
}
