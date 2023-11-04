import 'package:flutter/material.dart';
import 'package:pill_mate/core/utilis/app_strings.dart';
import 'package:pill_mate/features/home/presentation/screens/categories.dart';
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
      theme: AppThemes.lightMode,
      // home: SplashScreen(),
      home: const CategoriesScreen(),
    );
  }
}
