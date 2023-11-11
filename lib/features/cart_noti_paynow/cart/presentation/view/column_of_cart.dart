import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_assets.dart';

// ignore: must_be_immutable
class ColumnOfCart extends StatelessWidget {
  ColumnOfCart(
      {super.key,
      required this.image,
      required this.subTitle,
      required this.title,
      required this.text2});
  String title, subTitle, image, text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 110.h,
          width: 110.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.sp)),
              color: Colors.white,
              image: const DecorationImage(
                  image: AssetImage(ImageAssets.forgetPassword))),
        ),
        Column(
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
                Container(
                  child: Image.asset('assets/images/icon2.png'),
                ),
                SizedBox(
                  width: 10.h,
                ),
                const Text('125\$'),
                SizedBox(
                  width: 10.h,
                ),
                Container(
                  child: Image.asset('assets/images/img.png'),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
