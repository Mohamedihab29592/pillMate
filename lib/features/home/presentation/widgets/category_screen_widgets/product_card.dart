import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/discount.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/favourite.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/product_card_base_content.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              ProductCardBaseContent(),
              //discount widget
              Positioned(
                left: 8,
                top: 13.5,
                child: Discount(),
              ),
              //favourite widget
              Positioned(
                right: 8,
                top: 13.5,
                child: FavouriteIcon(),
              )
            ],
          ),
        ),
      ),
    );
  }
}