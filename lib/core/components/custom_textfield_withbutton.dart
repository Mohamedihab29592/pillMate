import 'package:flutter/material.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/components/custom_button.dart';


class CustomTextFieldWithButton extends StatelessWidget {
  const CustomTextFieldWithButton({
    super.key,
    this.onTap,
    required this.isButton,
    required this.hintText,
    this.buttonText,
    this.buttonColor,
    this.buttonTextStyle,
  });
  final void Function()? onTap;
  final bool isButton;
  final String hintText;
  final String? buttonText;
  final Color? buttonColor;
  final TextStyle? buttonTextStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        suffixIcon: isButton
            ? Padding(
                padding: const EdgeInsets.only(left: 250.0,right: 10),
                child: CustomButton(
                  onTap: onTap,
                  text: buttonText ?? '',
                ),
              )
            : null,
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontSize: 14, color: AppColors.grey),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGrey, width: 1.0),
            borderRadius: BorderRadius.circular(16)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
