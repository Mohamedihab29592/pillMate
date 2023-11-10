// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CyutomButton extends StatelessWidget {
  const CyutomButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 46.h,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff8BC4B5)),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
          )),
    );
  }
}
