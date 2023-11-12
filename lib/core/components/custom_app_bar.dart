import 'package:flutter/material.dart';
import 'package:pill_mate/core/components/back_arrow.dart';
import 'package:pill_mate/core/components/app_bar_pop_icon.dart';
import 'package:pill_mate/core/components/app_bar_title.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.appBarTitle, this.appBarAction,  this.backArrow});
  final String appBarTitle;
  final Widget ?backArrow;
  final List<Widget>? appBarAction;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backArrow,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: AppBarTitle(appBarTitle: appBarTitle),
      centerTitle: true,
      actions: appBarAction
    );
  }
}
