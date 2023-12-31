import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/components/custom_text_field.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_strings.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 96.0.h, top: 50.h),
                    child: Image.asset(
                      ImageAssets.forgetPassword,
                    ),
                  ),
                  Text(
                    AppStrings.forgetPassword,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextField(
                      prefixIcon: ImageAssets.sms,
                      hintText: AppStrings.enterUrEmail),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    onTap: () {
                      navigateReplacement(
                          context: context, route: Routes.verification);
                    },
                    text: AppStrings.Continue,
                    vertical: 20.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(AppStrings.rememberUrPassword),
                      GestureDetector(
                        onTap: () {
                          navigateAndKill(
                              context: context, route: Routes.login);
                        },
                        child:  Text(
                          AppStrings.login,
                          style:
                          regularStyle(color: Theme.of(context).brightness == Brightness.dark ?AppColors.kLightPrimaryColor:AppColors.kPrimaryColor, fontSize: 14),),
                        ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
