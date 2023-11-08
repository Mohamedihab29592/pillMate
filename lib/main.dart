import 'package:flutter/material.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/core/utilis/app_strings.dart';
import 'core/utilis/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: AppThemes.darkMode,
      initialRoute: Routes.initialRoute,
      routes: {
        Routes.initialRoute: (context) => appRoutes(Routes.initialRoute, null),
        Routes.categoryRoute: (context) => appRoutes(Routes.categoryRoute, null),
        Routes.favouriteRoute: (context) => appRoutes(Routes.favouriteRoute, null),
        Routes.productRoute: (context) => appRoutes(Routes.productRoute, null),
      },
    );
  }
}
