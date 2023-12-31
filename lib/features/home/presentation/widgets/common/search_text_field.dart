import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {super.key,
      required this.onChanged,
      this.hintText,
      this.textEditingController});
  final void Function(String)? onChanged;
  final String? hintText;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 24),
        child: TextFormField(
          controller: textEditingController,
          onChanged: onChanged,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 18,
              ),
          cursorColor: AppColors.kPrimaryColor,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Color(0xffC5C5C5), width: 1.3)),
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                borderSide:
                    BorderSide(color: AppColors.kPrimaryColor, width: 1.3)),
            hintText: hintText,
            prefixIconConstraints: const BoxConstraints(
              minWidth: 64,
              minHeight: 36,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Image.asset(ImageAssets.searchIcon,),
            ),
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontSize: 18, color: AppColors.grey),
          ),
        ));
  }
}
