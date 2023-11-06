import 'package:flutter/material.dart';
import 'package:pill_mate/core/utilis/app_colors.dart';
import 'package:pill_mate/core/utilis/app_text_style.dart';

class Discount extends StatelessWidget {
  const Discount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
          color: AppColors.kSoftPrimaryColor,
          borderRadius: BorderRadius.circular(8)),
      child: Text(
        '50 %',
        style: regularStyle(color: AppColors.kDarkPrimaryColor, fontSize: 16),
        maxLines: 1,
        overflow: TextOverflow.visible,
      ),
    );
  }
}
