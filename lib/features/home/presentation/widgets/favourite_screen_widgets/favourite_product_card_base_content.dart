import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:pill_mate/features/home/presentation/widgets/common/main_button.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';

class FavouriteProductCardBaseContent extends StatelessWidget {
  const FavouriteProductCardBaseContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        color: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF263238)
            : Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? const Color(0xFF263238)
                      : Colors.white,
                  height: constraints.maxHeight / 2,
                  width: constraints.maxWidth,
                  child: Image.asset(ImageAssets.product,)
              ),
            ),

            Container(
              color: Theme.of(context).brightness == Brightness.dark
                  ? const Color(0xFF263238)
                  : Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Vitaferrol B12 Vitaferrol B12 ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 16, ),
                      minFontSize: 14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    AutoSizeText(
                      '12 \$',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 16, color: Theme.of(context).brightness == Brightness.dark ?AppColors.kLightPrimaryColor:AppColors.kPrimaryColor),
                      minFontSize: 14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              color: Theme.of(context).brightness == Brightness.dark
                  ? const Color(0xFF263238)
                  : Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: MainButton(
                  borderColor: AppColors.kDarkPrimaryColor,
                    backGroundColor:  Theme.of(context).brightness == Brightness.dark
                        ? Colors.black
                        : Colors.white,
        textColor: Theme.of(context).brightness == Brightness.dark
        ? Colors.white
              : Colors.black,
                    buttonName: 'Add To Cart',
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8)),
              ),
            ),
            Spacer()
          ],
        ),
      );
    });
  }
}
