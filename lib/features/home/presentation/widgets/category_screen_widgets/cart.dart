

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/cart.svg',
      height: 28,
      width: 28,
    );
  }
}

