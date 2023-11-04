import 'package:flutter/material.dart';


class Routes {
  static const String initialRoute = '/';

}

Widget appRoutes(String route, dynamic arg) {
  switch (route) {
    case Routes.initialRoute:
     // return const SplashScreen();



    default:
      return const Scaffold(
        body: Center(
          child: Text('Not Found..!'),
        ),
      );
  }
}
