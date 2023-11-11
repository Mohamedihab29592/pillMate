

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_assets.dart';


class CartIcon extends StatefulWidget {
  const CartIcon({
    super.key,
  });

  @override
  State<CartIcon> createState() => _CartIconState();
}


class _CartIconState extends State<CartIcon> {
   bool isCart =true;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        isCart = !isCart;
        setState(() {});
      },
      child: Image.asset(       isCart? ImageAssets.shopping:ImageAssets.selectShopping,
      )
    );
  }
}

