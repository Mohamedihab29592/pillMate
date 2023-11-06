import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/categories_screen_widgets/category_card.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
    required this.categories,
  });

  final List categories;

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: !isPortrait ? 3 : 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 16,
            childAspectRatio: 1.85),
        itemBuilder: (context, index) {
          return CategoriesCard(
            category: categories[index],
          );
        });
  }
}
