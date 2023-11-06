import 'package:flutter/material.dart';
import 'package:pill_mate/core/utilis/app_colors.dart';
import 'package:pill_mate/core/utilis/app_text_style.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key});

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
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
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: isClicked ? AppColors.kPrimaryColor : AppColors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: AppColors.kPrimaryColor,
            ),
          ),
          child: Center(
            child: Text(
              'Add To Cart',
              style: regularStyle(
                  color: AppColors.kDarkPrimaryColor, fontSize: 16),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
