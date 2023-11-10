import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/components/custom_text_field.dart';
import 'package:pill_mate/core/utils/app_assets.dart';

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
                    'Forget Password',
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
                      hintText: 'Enter Your Email'),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                      onTap: () {},
                      color: const Color(0xFF8BC4B5),
                      text: 'Continue',
                      vertical: 20.h,
                      textStyle: const TextStyle(
                        color: Color(0xFF141D21),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Remember Your Password ?'),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Color(0xFF224A46)),
                        ),
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
