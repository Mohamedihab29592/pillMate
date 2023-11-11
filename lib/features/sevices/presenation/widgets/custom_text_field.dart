import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
    required this.color,
    this.style,
    this.obscureText = false,
  });
  final String? prefixIcon;
  final String? suffixIcon;
  final String hintText;
  final Color color;
  final TextStyle? style;
  bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: SizedBox(
        width: 328,
        child: TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: style,
            prefixIcon: (prefixIcon == null)
                ? null
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(prefixIcon!),
                    ),
                  ),
            suffixIcon: (suffixIcon == null)
                ? null
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(suffixIcon!),
                    ),
                  ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFF5F5F5),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFF5F5F5),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFF5F5F5),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
