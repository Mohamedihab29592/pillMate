import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/themes.dart';

class ToggleItem extends StatelessWidget {
  ToggleItem({
    super.key,
    this.imageWidth,
    this.imageHeight,
    this.title = "untitleed",
    this.preffixImage = "",
    this.isEnabled = true,
    this.itemHeight,
    this.onTapAction,
    this.tap
  });

  double? imageWidth, imageHeight,itemHeight;
  String? title, preffixImage;
  bool isEnabled;
  GestureTapCallback? onTapAction;
  void Function()? tap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        margin: const EdgeInsets.only(left: 15.0,right: 15,bottom: 10),
        height: itemHeight!,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: isEnabled ? AppColors.black : AppColors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
          child: Row(
            children: [
              Image(
                width: imageWidth,
                height: imageHeight,
                color: isEnabled ? AppColors.black : AppColors.grey,
                image: AssetImage(preffixImage!),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    title!,
                    style: isEnabled
                        ? AppThemes.lightMode.textTheme.titleLarge
                        : AppThemes.lightMode.textTheme.titleLarge,
                  ),
                ),
              ),
              InkWell(
                onTap: onTapAction,
                child: Image(
                  width: imageWidth,
                  height: imageHeight,
                  color: isEnabled ? AppColors.black : AppColors.grey,
                  image: AssetImage(isEnabled
                      ? "assets/images/toggle-on-circle.png"
                      : "assets/images/toggle-off-circle.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
