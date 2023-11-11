import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';

class CategoriesList extends StatelessWidget {
  final String image;

  const CategoriesList({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CircleAvatar(
        minRadius: 40,
        backgroundColor: AppColors.kLightPrimaryColor,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
          height: 60,
        ),
      ),
      onTap: () {},
    );
  }
}
