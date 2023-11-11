import 'package:flutter/material.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'core/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: AppThemes.darkMode,
        initialRoute: Routes.categoriesIntailRoute,
        routes: {
          Routes.categoriesIntailRoute: (context) =>
              appRoutes(Routes.categoriesIntailRoute, null),
          Routes.categoryRoute: (context) =>
              appRoutes(Routes.categoryRoute, null),
          Routes.favouriteRoute: (context) =>
              appRoutes(Routes.favouriteRoute, null),
          Routes.productRoute: (context) =>
              appRoutes(Routes.productRoute, null),
          Routes.paymentScreen: (context) =>
              appRoutes(Routes.paymentScreen, null),
          Routes.detailsScreen: (context) =>
              appRoutes(Routes.detailsScreen, null),
        },
      ),
    );
  }
}
