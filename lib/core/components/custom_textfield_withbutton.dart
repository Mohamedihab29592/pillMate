import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/components/custom_button.dart';


class CustomTextFieldWithButton extends StatelessWidget {
  const CustomTextFieldWithButton({
    Key? key,
    this.onTap,
    required this.isButton,
    required this.hintText,
    this.buttonText,
    this.buttonColor,
    this.buttonTextStyle,
  }) : super(key: key);

  final void Function()? onTap;
  final bool isButton;
  final String hintText;
  final String? buttonText;
  final Color? buttonColor;
  final TextStyle? buttonTextStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(

      cursorColor: Theme.of(context).brightness == Brightness.dark? AppColors.white:AppColors.black,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontSize: 14, color: AppColors.grey),
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color:Theme.of(context).brightness == Brightness.dark?  AppColors.grey: AppColors.darkContainer,
          ),
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color:Theme.of(context).brightness == Brightness.dark?  AppColors.darkContainer: AppColors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        suffixIcon: isButton
            ? SizedBox(
          width: 150.h,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomButton(
          onTap: onTap,
          text: buttonText ?? '',

        ),
              ),
            )
            : null,
      ),
    );
  }
}
