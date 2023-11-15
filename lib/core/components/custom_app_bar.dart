import 'package:flutter/material.dart';
import 'package:pill_mate/core/components/back_arrow.dart';
import 'package:pill_mate/core/components/app_bar_pop_icon.dart';
import 'package:pill_mate/core/components/app_bar_title.dart';

import '../utils/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.appBarTitle, this.appBarAction,  this.backArrow, this.style, this.color});
  final String appBarTitle;
  final Widget ?backArrow;
  final Color ?color;
  final TextStyle ?style;
  final List<Widget>? appBarAction;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backArrow,
      backgroundColor:color?? AppColors.transparent,
      elevation: 0,
      title: Text(appBarTitle,style: style,),

      centerTitle: true,
      actions: appBarAction
    );
  }
}
