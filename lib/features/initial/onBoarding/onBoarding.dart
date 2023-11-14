import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:pill_mate/features/initial/onBoarding/onBoarding1.dart';
import 'package:pill_mate/features/initial/onBoarding/onBoarding2.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  double currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPageValue = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: const [
                OnBoardingScreen1(),
                OnBoardingScreen2(),
              ],
            ),
            ),
            DotsIndicator(
              dotsCount: 2,
              position: currentPageValue.toInt(),
              ),
        ],
        ),
    );
  }
}
