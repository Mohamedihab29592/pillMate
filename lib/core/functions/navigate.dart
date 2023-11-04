import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

void navigate({
  required BuildContext context,
  required String route,
  dynamic arg,
}) {
  Navigator.pushNamed(
    context,
    route,
    arguments: arg,
  );
}

void navigateReplacement({
  required BuildContext context,
  required String route,
  dynamic arg,
}) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => appRoutes(route, arg),
    ),
  );
}

void navigateAndKill({
  required BuildContext context,
  required String route,
  dynamic arg,
}) {
  Navigator.pushAndRemoveUntil(context,  MaterialPageRoute(
    builder: (context) => appRoutes(route, arg),
  ), (route) => false);
}