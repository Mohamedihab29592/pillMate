import 'package:flutter/material.dart';
import 'package:pill_mate/core/helpers/search_helper.dart';
import 'package:pill_mate/core/utilis/app_assets.dart';
import 'package:pill_mate/features/home/data/models/category_model.dart';
import 'package:pill_mate/features/home/presentation/widgets/categories_screen_widgets/category_grid_view.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/app_bar_pop_icon.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/app_bar_title.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/search_text_field.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  final List<CategoryModel> allCategories = const [
    CategoryModel(
        categoryImage: ImageAssets.firstCategory,
        categoryName: 'Medical tools'),
    CategoryModel(
        categoryImage: ImageAssets.secondCategory, categoryName: 'Skincare'),
    CategoryModel(
        categoryImage: ImageAssets.thirdCategory, categoryName: 'Pills'),
    CategoryModel(
        categoryImage: ImageAssets.fourthCategory, categoryName: 'Cold&cough'),
    CategoryModel(
        categoryImage: ImageAssets.fifthCategory, categoryName: 'Wheelchairs'),
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
  List<CategoryModel> categories = const [];

  @override
  void initState() {
    //in the initial state .. categories will contain all categories
    categories = allCategories;
    super.initState();
  }


void search(String value) {
  List<CategoryModel> results = SearchHelper.search(
    allCategories,
    value,
    (CategoryModel category) => category.categoryName,
  );
  //in CustomSearchBar onChanged.. categories filtered to contain only the items which contain the value
  setState(() {
    categories = results;
  });
}

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
                onChanged: (value) => search(value),
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
