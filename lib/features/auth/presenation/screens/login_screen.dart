import 'package:flutter/material.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/core/utils/app_text_style.dart';
import 'package:pill_mate/features/auth/presenation/widgets/Custom_authentication_button.dart';

import '../../../../core/components/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 72,
            ),
            SizedBox(
                width: 80,
                height: 95,
                child: Image.asset(ImageAssets.pillMateLogo)),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 172,
                  height: 23,
                  child: Text(
                    AppStrings.welcom,
                    style: regularStyle(
                        color: AppColors.KDarkBluishGreen, fontSize: 17),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              prefixIcon: ImageAssets.userIcon,
              hintText: AppStrings.enterUrEmail,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              prefixIcon: ImageAssets.lock,
              hintText: AppStrings.enterUrPassword,
              obscureText: true,
              suffixIcon: ImageAssets.eyeSlash,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    navigateReplacement(
                        context: context, route: Routes.forgetPassword);
                  },
                  child: const Text(
                    AppStrings.forgetPassword,
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
                onTap: () {
                  navigateAndKill(context: context, route: Routes.layOut);
                },
                text: AppStrings.login),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 114.5,
                  child: Divider(
                    thickness: 1,
                    color: AppColors.lightGrey,
                  ),
                ),
                Text(
                  AppStrings.orLoginWith,
                  style:
                      regularStyle(color: AppColors.KMediumGray, fontSize: 12),
                ),
                const SizedBox(
                  width: 114.5,
                  child: Divider(
                    thickness: 1,
                    color: AppColors.lightGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomAuthenticationButton(
              image: ImageAssets.facebookIcon,
              text: AppStrings.continueWithFacebook,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomAuthenticationButton(
              image: ImageAssets.googleIcon,
              text: AppStrings.continueWithGoogle,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${AppStrings.haveAnAccount} ',
                  style: regularStyle(color: AppColors.darkGreen, fontSize: 12),
                ),
                InkWell(
                  onTap: () {
                    navigateReplacement(
                        context: context, route: Routes.register);
                  },
                  child: Text(
                    AppStrings.register,
                    style:
                        regularStyle(color: AppColors.darkGreen, fontSize: 12),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
