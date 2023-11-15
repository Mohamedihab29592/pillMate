import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
       this.prefixIcon,
      required this.hintText,
      this.obscureText = false,
      this.suffixIcon, });
   String ? prefixIcon;
  String? suffixIcon;
  final String hintText;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF263238)
            : Colors.grey.shade100,
      ),
      height: 58.h,
      width: double.infinity,
      child: TextFormField(
        cursorColor: Theme.of(context).brightness == Brightness.dark? AppColors.white:AppColors.black,

        style: Theme.of(context).textTheme.titleMedium,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon:prefixIcon == null ? null : Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(prefixIcon!,color: Colors.grey,),
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
                    child: Image.asset(suffixIcon!,color: Colors.grey,),
                  ),
                ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFF9E9E9E), fontSize: 14),
          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color:Theme.of(context).brightness == Brightness.dark?  AppColors.grey: AppColors.darkContainer,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(14)),
          ),
          enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color:Theme.of(context).brightness == Brightness.dark?  AppColors.darkContainer: AppColors.grey,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(14)),
        ),
        ),
      ),
    );
  }
}
