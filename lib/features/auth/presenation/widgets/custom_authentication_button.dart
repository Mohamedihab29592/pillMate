import 'package:flutter/material.dart';

class CustomAuthenticationButton extends StatelessWidget {
  const CustomAuthenticationButton(
      {super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff224A46),
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: SizedBox(
                width: 143,
                height: 32,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
