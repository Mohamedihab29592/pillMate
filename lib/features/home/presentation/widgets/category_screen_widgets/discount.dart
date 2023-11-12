import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class Discount extends StatelessWidget {
  const Discount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
          color: AppColors.kDarkPrimaryColor,
          borderRadius: BorderRadius.circular(8)),
      child: Text(
        '50 %',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontSize: 14, color: AppColors.kPrimaryColor),
        maxLines: 1,
        overflow: TextOverflow.visible,
      ),
    );
  }
}
