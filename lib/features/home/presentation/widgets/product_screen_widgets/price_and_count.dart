import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pill_mate/core/utilis/app_assets.dart';
import 'package:pill_mate/core/utilis/app_colors.dart';
import 'package:pill_mate/core/utilis/app_text_style.dart';
import 'package:pill_mate/features/home/presentation/widgets/product_screen_widgets/count_widget_button.dart';

class PriceAndCount extends StatefulWidget {
  const PriceAndCount({
    super.key,
  });

  @override
  State<PriceAndCount> createState() => _PriceAndCountState();
}

class _PriceAndCountState extends State<PriceAndCount> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText(
          '\$ 10',
          style: boldStyle(color: AppColors.kDarkPrimaryColor, fontSize: 24),
          minFontSize: 14,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            CountWidgetButton(
              onPressed: () {
                setState(() {
                  if (count != 1) {
                    count--;
                  }
                });
              },
              buttonIcon: ImageAssets.minusIcon,
              buttonColor: AppColors.grayColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 28,
                width: 28,
                child: Center(
                  child: AutoSizeText(
                    count.toString(),
                    style: boldStyle(color: AppColors.black, fontSize: 26),
                    minFontSize: 14,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            CountWidgetButton(
              onPressed: () {
                setState(() {
                  if (count < 99) {
                    count++;
                  }
                });
              },
              buttonIcon: ImageAssets.plusIcon,
              buttonColor: AppColors.kDarkPrimaryColor,
            )
          ],
        )
      ],
    );
  }
}
