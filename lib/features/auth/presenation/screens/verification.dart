import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_strings.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

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
                      ImageAssets.twoFactorAuthentication,
                    ),
                  ),
                  Text(
                    AppStrings.verification,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.enterCodeSent,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        AppStrings.mailExample,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  OtpTextField(
                    numberOfFields: 4,
                    fieldWidth: 60,
                    borderColor: const Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {}, // end onSubmit
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    children: [
                      Text(
                        AppStrings.time,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(AppStrings.dontReceiveCode),
                          GestureDetector(
                            child: const Text(
                              AppStrings.resend,
                              style: TextStyle(
                                  color: Color(0xFF224A46),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 32.h),
                    child: CustomButton(
                      onTap: () {
                        navigateReplacement(
                            context: context, route: Routes.newPassword);
                      },
                      text: AppStrings.Continue,
                      vertical: 20.h,
                    ),
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
