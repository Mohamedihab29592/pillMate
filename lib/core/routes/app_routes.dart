import 'package:flutter/material.dart';
import 'package:pill_mate/features/payment/presentation/screens/details_screens.dart';
import 'package:pill_mate/features/payment/presentation/screens/payment_screen.dart';

import '../../features/initial/splash/splash.dart';

class Routes {
  static const String initialRoute = '/';
  static const String paymentScreen = '/paymentScreen';
  static const String detailsScreen = '/detailsScreen';
}

Widget appRoutes(String route, dynamic arg) {
  switch (route) {
    case Routes.initialRoute:
      return const SplashScreen();
    case Routes.paymentScreen:
      return const PaymentScreen();
    case Routes.detailsScreen:
      return const DetailsScreen();

    default:
      return const Scaffold(
        body: Center(
          child: Text('Not Found..!'),
        ),
      );
  }
}
