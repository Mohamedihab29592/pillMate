// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class MainButton extends StatefulWidget {
  const MainButton({
    Key? key,
    required this.buttonName,
    required this.contentPadding,
    required this.backGroundColor,
    required this.borderColor, required this.textColor,
  }) : super(key: key);
  final String buttonName;
  final EdgeInsetsGeometry contentPadding;
  final Color backGroundColor;
  final Color textColor;
  final Color borderColor;

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          padding: widget.contentPadding,
          decoration: BoxDecoration(
            color: isClicked ? AppColors.kLightPrimaryColor : widget.backGroundColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 2,
              color: widget.borderColor,
            ),
          ),
          child: Center(
            child: Text(
              widget.buttonName,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(
                fontSize: 16,
                color: isClicked ? Colors.black : widget.textColor,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
