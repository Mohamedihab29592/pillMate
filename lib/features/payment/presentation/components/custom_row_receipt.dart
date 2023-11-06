import 'package:flutter/material.dart';
import 'package:pill_mate/core/utils/app_colors.dart';
import 'package:pill_mate/core/utils/app_text-style.dart';

class CustomRowReceipt extends StatelessWidget {
  const CustomRowReceipt({
    super.key,
    required this.text,
    required this.price,
  });
  final String text;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: regularStyle(color: AppColors.black, fontSize: 14),
          ),
          Text(
            '$price\$',
            style: boldStyle(color: AppColors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
