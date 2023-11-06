import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/product_card.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key, required this.productsNames});
  final List<String> productsNames;

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
          return ProductCard(
            productName: productsNames[index],
          );
        },
        childCount: productsNames.length,
      ),
    );
  }
}
