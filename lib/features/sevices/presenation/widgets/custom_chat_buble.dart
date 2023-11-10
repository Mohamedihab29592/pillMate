import 'package:flutter/material.dart';

class CustomChatBuble extends StatelessWidget {
  const CustomChatBuble({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 291,
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color(0xff8BC4B5),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Text(
          message,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12),
        ),
      ),
    );
  }
}

class CustomPharmacyChatBuble extends StatelessWidget {
  const CustomPharmacyChatBuble({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 291,
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color(0xffE7E7E7),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Text(
          message,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12),
        ),
      ),
    );
  }
}
