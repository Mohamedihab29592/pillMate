import 'package:flutter/material.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/utils/app_text-style.dart';
import 'package:pill_mate/features/payment/presentation/components/custom_change_button.dart';

class CustomTitlewithButtonRow extends StatelessWidget {
  const CustomTitlewithButtonRow({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: boldStyle(color: AppColors.black, fontSize: 16),
        ),
        CustomChangeButton(
          onPressed: onPressed,
        )
      ],
    );
  }
}
