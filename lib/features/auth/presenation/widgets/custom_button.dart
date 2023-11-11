import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 328,
      height: 46,
      decoration: const BoxDecoration(
        color: Color(0xFF8BC4B5),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      ),
    );
  }
}
