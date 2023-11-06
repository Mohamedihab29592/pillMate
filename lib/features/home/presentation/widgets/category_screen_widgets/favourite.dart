import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pill_mate/core/utilis/app_assets.dart';

class FavouriteIcon extends StatefulWidget {
  const FavouriteIcon({
    super.key,
  });

  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isFavourite = !isFavourite;
        setState(() {});
      },
      child: SvgPicture.asset(
        isFavourite ? ImageAssets.favouriteIcon : ImageAssets.notFavouriteIcon,
        height: 28,
        width: 28,
      ),
    );
  }
}
