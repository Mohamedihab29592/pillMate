import 'package:flutter/material.dart';
import 'package:pill_mate/core/utils/app_colors.dart';

import '../../../../core/utils/themes.dart';

class AccountItem extends StatelessWidget {

  AccountItem(
      {super.key, this.suffixImage, this.imageHeight,this.itemHeight, this.imageWidth, this.preffixImage, this.onTapAction,this.title});

  double? imageWidth, imageHeight,itemHeight;
  String? title, preffixImage, suffixImage;
  GestureTapCallback? onTapAction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapAction,
      child: Container(
        margin: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
        height: itemHeight,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1, color: AppColors.black,),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            children: [
              Image(
                width: imageWidth,
                height: imageHeight,
                color: AppColors.black,
                image: AssetImage(preffixImage!),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    title!,
                    style: AppThemes.lightMode.textTheme.titleLarge,
                  ),
                ),
              ),
              if(suffixImage == null)
                Container(),
              if(suffixImage != null)
              Image(
                width: imageWidth,
                height: imageHeight,
                color: AppColors.black,
                image: AssetImage(suffixImage!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}