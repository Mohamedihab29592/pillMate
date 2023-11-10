import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPlusorMin extends StatelessWidget {
  const CustomPlusorMin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }
}
