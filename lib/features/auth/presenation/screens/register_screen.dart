import 'package:flutter/material.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/core/utils/app_text_style.dart';

import '../../../../core/components/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 106,
            ),
            SizedBox(
              width: 80,
              height: 110,
              child: Image.asset(ImageAssets.profilePicture),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              prefixIcon: ImageAssets.userIcon,
              hintText: AppStrings.name,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              prefixIcon: ImageAssets.sms,
              hintText: AppStrings.email,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              prefixIcon: ImageAssets.phoneIcon,
              hintText: AppStrings.phoneNumber,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              prefixIcon: ImageAssets.location,
              hintText: AppStrings.location,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              prefixIcon: ImageAssets.lock,
              hintText: AppStrings.password,
              suffixIcon: ImageAssets.eye,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              prefixIcon: ImageAssets.lock,
              hintText: AppStrings.hiddenPassword,
              suffixIcon: ImageAssets.eyeSlash,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: AppStrings.register,
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${AppStrings.alreadyHaveAnAccount} ',
                  style: regularStyle(color: AppColors.KMediumGray, fontSize: 12),
                ),
                InkWell(
                  onTap: () {
                    navigateAndKill(context: context, route: Routes.login);
                  },
                  child: Text(
                    AppStrings.login,
                    style: regularStyle(color: AppColors.darkGreen, fontSize: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
