import 'package:flutter/material.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/components/custom_colored_button.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/core/utils/app_text_style.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 47, right: 47, top: 81),
        child: Column(
          children: [
            SizedBox(
              width: 265,
              height: 265,
              child: Image.asset(ImageAssets.onBoardingPic2),
            ),
            Container(
              width: 304,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.onBoardingTwoLine1,
                      style: regularStyle(
                          color: AppColors.KDarkBluishGreen, fontSize: 16),
                    ),
                    Text(
                      AppStrings.onBoardingTwoLine2,
                      style: regularStyle(
                          color: AppColors.KDarkBluishGreen, fontSize: 16),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomButton(
                onTap: () {
                  navigateAndKill(context: context, route: Routes.login);
                },
                text: AppStrings.login),
            const SizedBox(
              height: 10,
            ),
            CustomColoredButton(
                color: Colors.white,
                onTap: () {
                  navigateAndKill(context: context, route: Routes.register);
                },
                text: AppStrings.register),
          ],
        ),
      ),
    );
  }
}
