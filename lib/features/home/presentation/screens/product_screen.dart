import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pill_mate/core/utilis/app_assets.dart';
import 'package:pill_mate/core/utilis/app_colors.dart';
import 'package:pill_mate/core/utilis/app_text_style.dart';
import 'package:pill_mate/features/home/presentation/widgets/category_screen_widgets/product_card.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/custom_app_bar.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/main_button.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: '', appBarAction: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: SvgPicture.asset(
            ImageAssets.favouriteIcon,
            height: 32,
            width: 32,
          ),
        )
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                    height: !isPortrait ? width / 3.5 : height / 3.5,
                    width: width,
                    child: Image.asset(ImageAssets.productPageItem)),
              ),
              DotsIndicator(
                  dotsCount: 3,
                  decorator: DotsDecorator(
                    activeColor: AppColors.kDarkPrimaryColor,
                    color: AppColors.kPrimaryColor,
                    spacing:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
                    size: const Size(18.0, 7.0),
                    activeSize: const Size(18.0, 7.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.5)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.5)),
                  )),
              Align(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          '\$ 10',
                          style: boldStyle(
                              color: AppColors.kDarkPrimaryColor, fontSize: 24),
                          minFontSize: 14,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            const SmallButton(
                              buttonIcon: ImageAssets.minusIcon,
                              buttonColor: AppColors.grayColor,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: AutoSizeText(
                                '1',
                                style: boldStyle(
                                    color: AppColors.black, fontSize: 26),
                                minFontSize: 14,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SmallButton(
                              buttonIcon: ImageAssets.plusIcon,
                              buttonColor: AppColors.kDarkPrimaryColor,
                            )
                          ],
                        )
                      ],
                    ),
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
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: isPortrait ? 2 : 3,
                                  childAspectRatio: 0.9,
                                  crossAxisSpacing: 16,
                                  mainAxisSpacing: 12),
                          itemBuilder: (context, index) {
                            return const ProductCard(
                                productName: 'Vitaferrol B12 Vitaferrol B12');
                          },
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          Expanded(
                              child: MainButton(
                            backGroundColor: AppColors.white,
                            backGroundColorAfterClicked:
                                AppColors.kPrimaryColor,
                            borderColor: AppColors.kPrimaryColor,
                            buttonName: 'Add To Card',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 8),
                          )),
                          const SizedBox(
                            width: 16,
                          ),
                          Expanded(
                              child: MainButton(
                            backGroundColor: AppColors.kPrimaryColor,
                            borderColor: AppColors.kPrimaryColor,
                            buttonName: 'Buy Now',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 8),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SmallButton extends StatelessWidget {
  const SmallButton(
      {super.key, required this.buttonIcon, required this.buttonColor});
  final String buttonIcon;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            )),
            backgroundColor: MaterialStatePropertyAll(buttonColor),
            minimumSize: const MaterialStatePropertyAll(Size(40, 40))),
        child: SvgPicture.asset(
          buttonIcon,
        ));
  }
}
