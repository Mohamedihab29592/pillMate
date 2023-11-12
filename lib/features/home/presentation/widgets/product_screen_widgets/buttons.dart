import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/main_button.dart';

import '../../../../../core/utils/app_colors.dart';

class ProductScreenButtons extends StatelessWidget {
  const ProductScreenButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: MainButton(
              borderColor:  Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black,

              textColor: Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black,

          backGroundColor: Theme.of(context).brightness == Brightness.dark
              ? Colors.black
              : Colors.white,
          buttonName: 'Add To Card',
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        )),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child: MainButton(
              borderColor:  AppColors.kDarkPrimaryColor,

              textColor: Colors.black,

              backGroundColor: AppColors.kDarkPrimaryColor,
              buttonName: 'Buy Now',
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        )

        ),
      ],
    );
  }
}