import 'package:flutter/material.dart';
import 'package:i_library/router.dart';
import 'package:i_library/screens/admin_screens/admin_home.dart';
import 'package:i_library/screens/mainLanding.dart';
import 'package:i_library/screens/signUp.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'i_library',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/Adminhome',
        onGenerateRoute: createRoute,
        //home: AdminHome(),
      ),
    );
