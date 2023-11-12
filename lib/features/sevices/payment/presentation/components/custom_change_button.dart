import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_colors.dart';


class CustomChangeButton extends StatelessWidget {
  const CustomChangeButton({
    super.key,
    required this.onPressed,
  });
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(AppColors.transparent)),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Change',
              style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontSize: 14, color: AppColors.darkGreen),
            ),
            SizedBox(
              width: 6.w,
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.darkGreen,
              size: 12,
            )
          ],
        ));
  }
}
