import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/components/custom_text_field.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/core/utils/app_assets.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                    child: SvgPicture.asset(
                      ImageAssets.newPassword,
                    ),
                  ),
                  Text(
                    'New Password',
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
                      prefixIcon: ImageAssets.lock,
                      suffixIcon: ImageAssets.eyeSlash,
                      hintText: 'Enter Your Password'),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextField(
                      prefixIcon: ImageAssets.lock,
                      suffixIcon: ImageAssets.eyeSlash,
                      hintText: 'confirm Password'),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                      onTap: () {
                        navigateAndKill(context: context, route: Routes.login);
                      },
                      text: 'Reset',
                      vertical: 20.h,


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
