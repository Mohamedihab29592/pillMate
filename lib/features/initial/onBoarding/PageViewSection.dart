import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/components/custom_button.dart';
import '../../../core/components/custom_colored_button.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/utils/app_colors.dart';
import 'PageContent.dart';

class PageViewSection extends StatefulWidget {
  const PageViewSection({Key? key});

  @override
  State<PageViewSection> createState() => _PageViewSectionState();
}

class _PageViewSectionState extends State<PageViewSection> {
  final PageController _pageController = PageController();
  int _activeIndex = 0;
  late final GlobalKey<NavigatorState> navigatorKey;

  final List<PageContent> _pages = const [
    PageContent(
      image: ImageAssets.onBoarding1,
      description: AppStrings.onBoardingOneLine1,
    ),
    PageContent(
      image: ImageAssets.onBoarding2,
      description: AppStrings.onBoardingTwoLine1,
    ),
  ];

  @override
  void initState() {
    super.initState();
    navigatorKey = GlobalKey<NavigatorState>();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          SizedBox(
            height: 380.h,
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) => setState(() {
                _activeIndex = value;
              }),
              physics: const BouncingScrollPhysics(),
              children: _pages,
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: _pages.length,
            effect: ExpandingDotsEffect(
              dotHeight: 6,
              activeDotColor: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.kLightPrimaryColor
                  : AppColors.kPrimaryColor,
            ),
          ),
          const Spacer(),
          if (_activeIndex == 0) // Show only on the first page
            CustomButton(
              onTap: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              text: 'Next',
            ),
          if (_activeIndex == 1) // Show on the second page
            Column(
              children: [
                CustomButton(
                  onTap: () {
                    navigate(context: context, route: Routes.login);
                  },
                  text: 'Login',
                ),
                const SizedBox(height: 15),
                CustomColoredButton(
                  text: 'Register',
                  onTap: () {
                    navigate(context: context, route: Routes.register);
                  },
                  color: Theme.of(context).brightness == Brightness.dark
                      ? AppColors.black
                      : AppColors.white,
                ),
              ],
            ),
           SizedBox(
            height: 100.h,
          ),
        ],
      ),
    );
  }
}
