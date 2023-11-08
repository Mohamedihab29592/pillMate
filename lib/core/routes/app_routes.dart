import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/features/home/data/models/category_model.dart';
import 'package:pill_mate/features/home/presentation/screens/categories_screen.dart';
import 'package:pill_mate/features/home/presentation/screens/category_screen.dart';
import 'package:pill_mate/features/home/presentation/screens/favourite_screen.dart';
import 'package:pill_mate/features/home/presentation/screens/product_screen.dart';

import '../../features/home/presentation/bloc/cubit/search_cubit.dart';

class Routes {
  static const String initialRoute = '/';
  static const String categoryRoute = '/category';
  static const String favouriteRoute = '/favourite';
  static const String productRoute = '/product';
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
    case Routes.favouriteRoute:
      return const FavouriteScreen();
    case Routes.productRoute:
      return const ProductScreen();

    default:
      return const Scaffold(
        body: Center(
          child: Text('Not Found..!'),
        ),
      );
  }
}
