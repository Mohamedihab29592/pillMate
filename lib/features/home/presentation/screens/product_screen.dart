import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pill_mate/core/utilis/app_text_style.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/custom_app_bar.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/favourite.dart';
import 'package:pill_mate/features/home/presentation/widgets/product_screen_widgets/buttons.dart';
import 'package:pill_mate/features/home/presentation/widgets/product_screen_widgets/custom_dots_indicator.dart';
import 'package:pill_mate/features/home/presentation/widgets/product_screen_widgets/price_and_count.dart';
import 'package:pill_mate/features/home/presentation/widgets/product_screen_widgets/prodcut_images_page_view.dart';
import 'package:pill_mate/features/home/presentation/widgets/product_screen_widgets/similar_product_grid_view.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: const CustomAppBar(appBarTitle: '', appBarAction: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: FavouriteIcon(
            isForFavouriteScreen: true,
            iconHeight: 32,
            iconWidth: 32,
          ),
        )
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                  height: !isPortrait ? width / 3.5 : height / 3.5,
                  width: width,
                  child: ProductImagesPageView(
                    controller: pageController!,
                  )),
            ),
            CustomDotsIndicator(
                dotsPosition: pageController!.hasClients
                    ? pageController?.page!.toInt()
                    : 0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Panadol',
                      style: regularStyle(
                          color: const Color(0XFF121212), fontSize: 20),
                      minFontSize: 14,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: AutoSizeText(
                        '20mg',
                        style: regularStyle(
                            color: const Color(0XFF6C6C6C), fontSize: 18),
                        minFontSize: 14,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const PriceAndCount(),
                    AutoSizeText(
                      'Description',
                      style: regularStyle(
                          color: const Color(0XFF121212), fontSize: 20),
                      minFontSize: 14,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AutoSizeText(
                      'Voluptatem non exercitationem ducimus ut est delectus dolores. Et nemo consequatur labore blanditiis in voluptates sed esse. Omnis odit mollitia exercitationem ratione. Nobis fugit et dolores deleniti. Dolorum ut eius et.',
                      style: regularStyle(
                          color: const Color(0XFF6C6C6C), fontSize: 16),
                      minFontSize: 14,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: SimilarProductsGridView()),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: ProductScreenButtons(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
