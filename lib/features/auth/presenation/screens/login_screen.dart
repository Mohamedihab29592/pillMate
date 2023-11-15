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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Image.asset(ImageAssets.pillMateLogo),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.welcom,
                        style: Theme.of(context).textTheme.titleLarge,
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
                        child:  Text(
                          AppStrings.forgetPassword,
                          style: TextStyle(decoration: TextDecoration.underline,color: Theme.of(context).brightness == Brightness.dark ?AppColors.kLightPrimaryColor:AppColors.kPrimaryColor,),
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
                            regularStyle(color: AppColors.kMediumGray, fontSize: 12),
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
                        style:Theme.of(context).textTheme.bodyMedium,
                      ),
                      InkWell(
                        onTap: () {
                          navigateReplacement(
                              context: context, route: Routes.register);
                        },
                        child: Text(
                          AppStrings.register,
                          style:
                              regularStyle(color: Theme.of(context).brightness == Brightness.dark ?AppColors.kLightPrimaryColor:AppColors.kPrimaryColor, fontSize: 14),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
