import 'package:flutter/material.dart';
import 'package:i_library/main.dart';
import 'package:i_library/screens/admin_screens/admin_home.dart';
import 'package:i_library/models/books.dart';
import 'package:i_library/screens/admin_screens/books/bookDetails.dart';
import 'package:i_library/screens/admin_screens/books/bookList.dart';
import 'package:i_library/screens/admin_screens/rent_settings/rent_main.dart';
import 'package:i_library/screens/mainLanding.dart';
import 'package:i_library/screens/signUp.dart';
import 'package:i_library/screens/login.dart';

Route<dynamic> createRoute(settings) {
  switch (settings.name) {
    case '/':
    case '/Adminhome':
      return AdminHome.route();

    case '/RentMain':
      return Rent2.route();

    case '/BookDetails':
      return BookDetails.route();

    case '/BookList':
      return bookList.route();
    case '/main':
      return mainLandingPage.route();
    case '/Signup':
      return signUp.route();

    case '/Login':
      return login.route();
  }
  /*  case '/new':
      return EditScreen.route(isEditing: false);

    case '/edit':
      return EditScreen.route(
          isEditing: true);
  }
  return null;*/
}
