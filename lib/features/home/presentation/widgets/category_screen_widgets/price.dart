

import 'package:flutter/material.dart';
import 'package:pill_mate/core/utilis/app_colors.dart';
import 'package:pill_mate/core/utilis/app_text_style.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '12:00 \$',
      style: boldStyle(color: AppColors.kDarkPrimaryColor, fontSize: 20),
      overflow: TextOverflow.visible,
    );
  }
}

