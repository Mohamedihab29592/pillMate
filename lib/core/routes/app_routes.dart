import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/screens/categories_screen.dart';
import 'package:pill_mate/features/home/presentation/screens/category_screen.dart';


class Routes {
  static const String initialRoute = '/';
  static const String categoryRoute = '/category';


}

Widget appRoutes(String route, dynamic arg) {
  switch (route) {
    case Routes.initialRoute:
     return const CategoriesScreen();
    case Routes.categoryRoute:
     return const CategoryScreen();



    default:
      return const Scaffold(
        body: Center(
          child: Text('Not Found..!'),
        ),
      );
  }
}
