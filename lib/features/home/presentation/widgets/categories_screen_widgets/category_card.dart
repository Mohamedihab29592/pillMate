import 'package:flutter/material.dart';
import 'package:pill_mate/core/utilis/app_colors.dart';
import 'package:pill_mate/core/utilis/app_text_style.dart';
import 'package:pill_mate/features/home/data/models/category_model.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1.3, color: AppColors.kPrimaryColor),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
            child: Image.asset(
              category.categoryImage,
            ),
          ),
          Expanded(
            child: Text(
              category.categoryName,
              style: regularStyle(color: const Color(0xff636161), fontSize: 18),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
