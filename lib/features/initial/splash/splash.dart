// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/features/initial/onBoarding/onBoarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        navigateAndKill(context: context, route: Routes.onBoarding);
      }
    });
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              Theme.of(context).brightness == Brightness.dark
                  ? ImageAssets.pillMateLogoDark
                  : ImageAssets.pillMateLogoLight,
            ),
          ],
        ),
      ),
    );
  }
}
