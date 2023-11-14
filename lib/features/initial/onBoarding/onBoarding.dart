import 'package:flutter/material.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/routes/app_routes.dart';

import '../../../core/components/custom_colored_button.dart';
import '../../../core/utils/app_colors.dart';
import 'PageViewSection.dart';

class OnBoardingScreen extends StatelessWidget {

  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: PageViewSection(),
          ),

        ],
      ),
    );
  }
}
