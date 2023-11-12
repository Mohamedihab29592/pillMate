import 'package:flutter/material.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:pill_mate/features/home/presentation/widgets/favourite_screen_widgets/favourite_product_card_base_content.dart';

import '../../../../../core/components/favourite.dart';

class FavouriteProductCard extends StatelessWidget {
  const FavouriteProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigate(context: context, route: Routes.productRoute),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: AspectRatio(
          aspectRatio: 0.9,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xfff5f5f5),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 6,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: const Stack(
              children: [
                //product's image,name,price and cart icon
                FavouriteProductCardBaseContent(),
                //favourite widget
                Positioned(
                  right: 8,
                  top: 13.5,
                  child: FavouriteIcon(isForFavouriteScreen: true,iconHeight: 28,iconWidth: 28,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
