// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieeld extends StatelessWidget {
  const CustomTextFieeld({
    Key? key,
    required this.text,
    required this.vertical,
  }) : super(key: key);
  final String text;
  final double vertical;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: 10),
        hintText: text,
        alignLabelWithHint: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.sp),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10.sp),
        ),
      ),
    );
  }
}
