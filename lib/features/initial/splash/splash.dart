import 'package:flutter/material.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/core/utils/app_text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 129.01,
              width: 108.64,
              child: Image.asset(ImageAssets.pillMateLogo),
            ),
            Text(
              AppStrings.appName,
              style: regularStyle(color: AppColors.kPrimaryColor, fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
