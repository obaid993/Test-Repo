// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:routing/Utils/routes_name.dart';
import 'package:routing/home_screen.dart';
import 'package:routing/screen_two.dart';
import '../screen_three.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: ((context) => HomeScreen()));
      case RoutesName.screenTwo:
        return MaterialPageRoute(
            builder: ((context) => ScreenTwo(data: settings.arguments as Map)));

      case RoutesName.screenThree:
        return MaterialPageRoute(builder: ((context) => ScreenThree()));

      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(child: Text('No Routes Defined')),
          );
        });
    }

  }
}
