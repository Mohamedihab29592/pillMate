// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class BackArrow extends StatelessWidget {
   BackArrow({super.key,this.color});
  Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color:color ?? (Theme.of(context).brightness == Brightness.dark ?AppColors.kLightPrimaryColor:AppColors.black),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios));
  }
}
