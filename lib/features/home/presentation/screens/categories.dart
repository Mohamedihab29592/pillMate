import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/app_bar_pop_icon.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/app_bar_title.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/search_text_field.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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
            ],
          ),
        ),
      ),
    );
  }
}
