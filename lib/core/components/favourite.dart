import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../utils/app_colors.dart';

class FavouriteIcon extends StatefulWidget {
  const FavouriteIcon({super.key, required this.isForFavouriteScreen,required this.iconHeight,required this.iconWidth});
  final bool isForFavouriteScreen;
  //!because i need more bigger icon in product screen
  final double iconHeight;
  final double iconWidth;

  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  late bool isFavourite;

  @override
  void initState() {
    isFavourite = widget.isForFavouriteScreen ? true : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isFavourite = !isFavourite;
        setState(() {});
      },
      child: Image.asset(        isFavourite ? ImageAssets.selectHeart : ImageAssets.heart,
        color: Theme.of(context).brightness == Brightness.dark?

        AppColors.kLightPrimaryColor:AppColors.kPrimaryColor,
      )
    );
  }
}
