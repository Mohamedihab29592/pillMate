import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/favourite_screen_widgets/favourite_product_card.dart';

class FavouriteGridView extends StatelessWidget {
  const FavouriteGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isPortrait ? 2 : 3,
          mainAxisSpacing: 12,
          crossAxisSpacing: 16,
          childAspectRatio: .9),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return const FavouriteProductCard();
        },
        childCount: 20,
      ),
    );
  }
}
