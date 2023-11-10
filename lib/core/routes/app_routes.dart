import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/features/home/presentation/screens/category_screen.dart';
import 'package:pill_mate/features/home/presentation/screens/favourite_screen.dart';
import 'package:pill_mate/features/home/presentation/screens/product_screen.dart';
import 'package:pill_mate/features/newPassword/presentation/screens/forget_password.dart';
import 'package:pill_mate/features/newPassword/presentation/screens/new-password.dart';
import 'package:pill_mate/features/payment/presentation/screens/details_screens.dart';
import 'package:pill_mate/features/payment/presentation/screens/payment_screen.dart';

import '../../features/home/presentation/bloc/cubit/search_cubit.dart';
import '../../features/initial/splash/splash.dart';
import '../../features/newPassword/presentation/screens/verification.dart';

class Routes {
  static const String initialRoute = '/';
  static const String categoryRoute = '/category';
  static const String favouriteRoute = '/favourite';
  static const String productRoute = '/product';
  static const String paymentScreen = '/paymentScreen';
  static const String detailsScreen = '/detailsScreen';
  static const String forgetPassword = '/forgetPassword';
  static const String verification = '/Verification';
  static const String newPassword = '/NewPassword';
}

Widget appRoutes(String route, dynamic arg) {
  switch (route) {
    case Routes.initialRoute:
      return const SplashScreen();

    case Routes.categoryRoute:
      return BlocProvider(
        create: (context) => SearchCubit<String>(),
        child: const CategoryScreen(),
      );
    case Routes.favouriteRoute:
      return const FavouriteScreen();
    case Routes.productRoute:
      return const ProductScreen();

    case Routes.paymentScreen:
      return const PaymentScreen();
    case Routes.detailsScreen:
      return const DetailsScreen();
    case Routes.forgetPassword:
      return const ForgetPassword();
    case Routes.verification:
      return const Verification();
    case Routes.newPassword:
      return const NewPassword();

    default:
      return const Scaffold(
        body: Center(
          child: Text('Not Found..!'),
        ),
      );
  }
}
