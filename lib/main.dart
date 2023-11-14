import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/features/auth/presenation/screens/new-password.dart';

import 'core/routes/app_routes.dart';
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
        theme: AppThemes.lightMode,
        home: const NewPassword(),
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => appRoutes(settings.name!, settings.arguments),
          );
        },
      ),
    );
  }
}
