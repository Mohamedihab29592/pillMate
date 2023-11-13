import 'package:flutter/material.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/core/utils/app_text_style.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

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
              child: Image.asset(ImageAssets.onBoardingPic1),
            ),
            Container(
              width: 304,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.onBoardingOneLine1,
                      style: regularStyle(
                          color: AppColors.KDarkBluishGreen, fontSize: 16),
                    ),
                    Text(
                      AppStrings.onBoardingOneLine2,
                      style: regularStyle(
                          color: AppColors.KDarkBluishGreen, fontSize: 16),
                    ),
                    Text(
                      AppStrings.onBoardingOneLine3,
                      style: regularStyle(
                          color: AppColors.KDarkBluishGreen, fontSize: 16),
                    ),
                    Text(
                      AppStrings.onBoardingOneLine4,
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
                  navigateAndKill(context: context, route: Routes.onBoarding2);
                },
                text: AppStrings.next),
          ],
        ),
      ),
    );
  }
}
