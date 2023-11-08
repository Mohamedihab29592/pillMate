import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/utilis/app_assets.dart';
import 'package:pill_mate/features/home/data/models/category_model.dart';
import 'package:pill_mate/features/home/presentation/widgets/categories_screen_widgets/category_grid_view.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/custom_app_bar.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/search_text_field.dart';

import '../bloc/cubit/search_cubit.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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

  @override
  Widget build(BuildContext context) {
    final searchCubit = BlocProvider.of<SearchCubit<CategoryModel>>(context);
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: const CustomAppBar(appBarTitle: 'Categories'),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomSearchBar(
                textEditingController: searchController,
                onChanged: (query) => searchCubit.filterSearchResults(
                    allCategories,
                    query,
                    (CategoryModel category) => category.categoryName),
                hintText: 'Search',
              ),
              BlocBuilder<SearchCubit<CategoryModel>, List<CategoryModel>?>(
                builder: (context, filteredList) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: CategoryGridView(
                        categories: searchController.text.isEmpty
                            ? allCategories
                            : filteredList!),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
