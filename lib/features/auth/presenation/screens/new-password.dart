import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/components/custom_text_field.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_strings.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isPassword = true;
  bool _isConfirmPassword = true;
  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
  }

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
                    AppStrings.newPassword,
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
                    controller: _passwordController,
                    obscureText: _isPassword,
                    prefixIcon: ImageAssets.lock,
                    suffixIcon:
                        _isPassword ? ImageAssets.eyeSlash : ImageAssets.eye,
                    hintText: AppStrings.enterUrPassword,
                    valid: (value) {
                      if (value!.isEmpty || value.length < 8) {
                        return AppStrings.valid;
                      }
                      if (!RegExp(r'[\W]').hasMatch(value)) {
                        return 'Password must contain at least one special character.';
                      }
                      return null;
                    },
                    suffixIconPressed: () {
                      _isPassword = !_isPassword;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextField(
                    obscureText: _isConfirmPassword,
                    controller: _confirmPasswordController,
                    prefixIcon: ImageAssets.lock,
                    suffixIcon: _isConfirmPassword
                        ? ImageAssets.eyeSlash
                        : ImageAssets.eye,
                    hintText: AppStrings.confirmPassword,
                    valid: (value) {
                      if (value!.isEmpty || value.length < 8) {
                        return AppStrings.valid;
                      }
                      if (value != _passwordController.text) {
                        return AppStrings.vailConfirmPassForm;
                      }
                      if (!RegExp(r'[\W]').hasMatch(value)) {
                        return 'Password must contain at least one special character.';
                      }
                      return null;
                    },
                    suffixIconPressed: () {
                      _isConfirmPassword = !_isConfirmPassword;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    onTap: () {
                      navigateAndKill(context: context, route: Routes.login);
                    },
                    text: AppStrings.reset,
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
