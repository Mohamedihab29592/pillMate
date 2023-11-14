import 'package:flutter/material.dart';
import 'package:pill_mate/core/utils/app_text_style.dart';

import '../utils/app_colors.dart';

class CustomColoredButton extends StatelessWidget {
  const CustomColoredButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.color});

  final void Function()? onTap;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            color: color,
            borderRadius: BorderRadius.circular(14)),
        child: Center(
          child: Text(
            text,
            style: regularStyle(color: AppColors.black, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
