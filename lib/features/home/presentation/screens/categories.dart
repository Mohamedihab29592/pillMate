import 'package:flutter/material.dart';
import 'package:pill_mate/core/utilis/app_assets.dart';
import 'package:pill_mate/features/home/data/models/category_model.dart';
import 'package:pill_mate/features/home/presentation/widgets/categories_screen_widgets/category_grid_view.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/app_bar_pop_icon.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/app_bar_title.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/search_text_field.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  final List categories = const [
    CategoryModel(
      categoryImage: ImageAssets.firstCategory,
      categoryName: 'medical tools',
    ),
    CategoryModel(
        categoryImage: ImageAssets.secondCategory, categoryName: 'skincare'),
    CategoryModel(
        categoryImage: ImageAssets.thirdCategory, categoryName: 'Pills'),
    CategoryModel(
        categoryImage: ImageAssets.fourthCategory, categoryName: 'cold&cough'),
    CategoryModel(
        categoryImage: ImageAssets.fifthCategory, categoryName: 'wheelchairs'),
    CategoryModel(
        categoryImage: ImageAssets.sixthCategory, categoryName: 'Pills'),
    CategoryModel(
        categoryImage: ImageAssets.seventhCategory, categoryName: 'Pills'),
    CategoryModel(
        categoryImage: ImageAssets.eighthCategory, categoryName: 'Pills'),
    CategoryModel(
        categoryImage: ImageAssets.ninthCategory, categoryName: 'Pills'),
    CategoryModel(
        categoryImage: ImageAssets.tenthCategory, categoryName: 'Pills'),
    CategoryModel(
        categoryImage: ImageAssets.eleventhCategory, categoryName: 'Pills'),
    CategoryModel(
        categoryImage: ImageAssets.twelfthCategory, categoryName: 'Pills')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const AppBarPopIcon(),
        title: const AppBarTitle(appBarTitle: 'Categories'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomSearchBar(
                onChanged: (p0) {},
                hintText: 'Search',
              ),
              const SizedBox(
                height: 20,
              ),
              CategoryGridView(categories: categories)
            ],
          ),
        ),
      ),
    );
  }
}
