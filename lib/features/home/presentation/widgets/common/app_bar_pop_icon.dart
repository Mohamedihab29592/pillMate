import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pill_mate/core/utilis/app_colors.dart';

class AppBarPopIcon extends StatelessWidget {
  const AppBarPopIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: IconButton(
        splashRadius: 28,
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: const Icon(
          FontAwesomeIcons.chevronLeft,
          color: AppColors.iconsColor,
        ),
      ),
    );
  }
}
