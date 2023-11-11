import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class ProductImagesPageView extends StatelessWidget {
  const ProductImagesPageView({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller, 
      physics: const BouncingScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Image.asset(ImageAssets.product);
      },
    );
  }
}
