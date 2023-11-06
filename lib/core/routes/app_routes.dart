import 'package:flutter/material.dart';
import 'package:pill_mate/features/payment/presentation/screens/payment_screen.dart';

import '../../features/initial/splash/splash.dart';

class Routes {
  static const String initialRoute = '/';
  static const String paymentScreen = '/paymentScreen';
}

Widget appRoutes(String route, dynamic arg) {
  switch (route) {
    case Routes.initialRoute:
      return const PaymentScreen();
    case Routes.paymentScreen:
      return const PaymentScreen();

    default:
      return const Scaffold(
        body: Center(
          child: Text('Not Found..!'),
        ),
      );
  }
}
