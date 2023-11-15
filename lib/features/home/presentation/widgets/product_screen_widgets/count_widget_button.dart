import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CountWidgetButton extends StatelessWidget {
  const CountWidgetButton(
      {super.key,  required this.buttonColor,required this.onPressed, this.icon});
  final Color buttonColor;
  final IconData? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        onPressed: onPressed,
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            )),
            backgroundColor: MaterialStatePropertyAll(buttonColor),
            minimumSize: const MaterialStatePropertyAll(Size(40, 40))),
        child: Icon(icon,color: AppColors.white,),

    );
  }
}
