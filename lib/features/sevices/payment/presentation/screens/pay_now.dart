import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/utils/app_colors.dart';


class PayNowScreen extends StatelessWidget {
  const PayNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 80.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/Medicine-bro 1.png'),
            ),
            SizedBox(
              height: 70.h,
            ),
            Text(
              'Done 🎉',
              style: Theme.of(context).textTheme.titleMedium,),
            SizedBox(
              height: 16.h,
            ),
             Text(
              'your order will arrive in 30 min',
                style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: 83.h,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 46.h,
                child: CustomButton(onTap: () {  },text: 'Back to home', ),
            )
          ],
        ),
      ),
    );
  }
}
