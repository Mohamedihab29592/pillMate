import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';

class CartIcon extends StatefulWidget {
  const CartIcon({
    super.key,
  });

  @override
  State<CartIcon> createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
  bool isCart = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          isCart = !isCart;
          setState(() {});
        },
        child: Image.asset(

          isCart ? ImageAssets.shopping : ImageAssets.selectShopping,
          color: Theme.of(context).brightness == Brightness.dark?

          AppColors.kLightPrimaryColor:AppColors.kPrimaryColor,
        ));
  }
}
