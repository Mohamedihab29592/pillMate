import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_text_style.dart';

import '../../../../core/utils/app_colors.dart';

// ignore: must_be_immutable
class ColumnOfCart extends StatelessWidget {
  ColumnOfCart(
      {super.key,
      required this.image,
      required this.subTitle,
      required this.tapPlus,
      required this.tapMinus,
      required this.title,
      required this.text2});

  String title, subTitle, image, text2;
  void Function()? tapPlus;
  void Function()? tapMinus;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 110.h,
          width: 110.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.sp)),
              color: Colors.white,
              image: const DecorationImage(
                  image: AssetImage('assets/images/cartTime.png'))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  child: ListTile(
                    title: Text(title),
                    subtitle: Text(
                      subTitle,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    trailing: Image.asset(image),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '12\$',
                  style:
                      boldStyle(color: Theme.of(context).brightness == Brightness.dark ?AppColors.kLightPrimaryColor:AppColors.kPrimaryColor, fontSize: 16),
                ),
                 SizedBox(
                  width: 120.h,
                ),
                InkWell(
                    onTap: () {
                      tapMinus;
                    },
                    child: Image.asset('assets/images/img.png')),


                SizedBox(
                  width: 10.h,
                ),
                const Text('1'),
                SizedBox(
                  width: 10.h,
                ),
                InkWell(
                    onTap: () {
                      tapPlus;
                    },
                    child: Image.asset('assets/images/icon2.png')),
              ],
            ),
          ],
        )
      ],
    );
  }
}
