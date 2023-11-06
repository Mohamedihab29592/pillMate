import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/features/home/data/models/category_model.dart';
import 'package:pill_mate/features/home/presentation/manager/cubit/search_cubit.dart';
import 'package:pill_mate/features/home/presentation/screens/categories_screen.dart';
import 'package:pill_mate/features/home/presentation/screens/category_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String categoryRoute = '/category';
}

Widget appRoutes(String route, dynamic arg) {
  switch (route) {
    case Routes.initialRoute:
      return BlocProvider(
        create: (context) => SearchCubit<CategoryModel>(),
        child: const CategoriesScreen(),
      );
    case Routes.categoryRoute:
      return BlocProvider(
        create: (context) => SearchCubit<String>(),
        child: const CategoryScreen(),
      );

    default:
      return const Scaffold(
        body: Center(
          child: Text('Not Found..!'),
        ),
      );
  }
}
