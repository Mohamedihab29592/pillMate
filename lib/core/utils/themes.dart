import 'package:flutter/material.dart';
import 'package:pill_mate/core/utils/app_text-style.dart';

import 'app_colors.dart';

class AppThemes {
  static final darkMode = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.darkGrey),
            foregroundColor: MaterialStateProperty.all(Colors.white))),
    cardTheme: CardTheme(color: AppColors.darkGrey),
    scaffoldBackgroundColor: AppColors.kPrimaryColor,
    colorScheme: const ColorScheme.dark(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkGrey,
      selectedItemColor: AppColors.kPrimaryColor,
      unselectedItemColor: AppColors.grey,
      elevation: 20,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        color: AppColors.kPrimaryColor,
      ),
      unselectedLabelStyle: const TextStyle(
        color: AppColors.grey,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.kPrimaryColor,
    ),
    textTheme: TextTheme(
        bodyLarge: boldStyle(fontSize: 17, color: AppColors.white),
        titleMedium: boldStyle(fontSize: 16, color: AppColors.white),
        titleSmall: regularStyle(fontSize: 14, color: AppColors.white)),
  );

  static final lightMode = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.white),
            foregroundColor: MaterialStateProperty.all(Colors.black))),
    cardTheme: const CardTheme(color: AppColors.white),
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: const ColorScheme.light(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.kPrimaryColor,
      unselectedItemColor: AppColors.grey,
      elevation: 20,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
        color: AppColors.kPrimaryColor,
      ),
      unselectedLabelStyle: const TextStyle(
        color: AppColors.grey,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.kPrimaryColor,
    ),
    textTheme: TextTheme(
        bodyLarge: boldStyle(fontSize: 17, color: AppColors.black),
        titleMedium: boldStyle(fontSize: 16, color: AppColors.black),
        titleSmall: regularStyle(fontSize: 14, color: AppColors.black)),
  );
}
