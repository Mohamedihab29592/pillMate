import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.horizontal = 20,
    this.vertical = 5,
  });

  final void Function()? onTap;
  final String text;
  final double horizontal;
  final double vertical;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,


        decoration: BoxDecoration(
            color: AppColors.kDarkPrimaryColor, borderRadius: BorderRadius.circular(14)),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
