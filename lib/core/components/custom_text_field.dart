import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.prefixIcon,
      required this.hintText,
      this.obscureText = false,
      this.suffixIcon});
  final String prefixIcon;
  String? suffixIcon;
  final String hintText;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFF5F5F5),
      ),
      height: 58.h,
      width: double.infinity,
      child: TextFormField(
        style: const TextStyle(color: Color(0xFF141D21)),
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(prefixIcon),
            ),
          ),
          suffixIcon: (suffixIcon == null)
              ? null
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset(suffixIcon!),
                  ),
                ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFF9E9E9E), fontSize: 14),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF5F5F5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF5F5F5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFF5F5F5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
