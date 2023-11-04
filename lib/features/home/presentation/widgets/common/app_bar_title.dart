import 'package:flutter/material.dart';
import 'package:pill_mate/core/utilis/app_colors.dart';
import 'package:pill_mate/core/utilis/app_text-style.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.appBarTitle
  });
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      appBarTitle,
      style: regularStyle(
        color: AppColors.appBarTitleColor,
        fontSize: 22,
      ).copyWith(fontWeight: FontWeight.w500),
    );
  }
}
