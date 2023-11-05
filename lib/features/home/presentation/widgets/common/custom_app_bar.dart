import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/app_bar_pop_icon.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/app_bar_title.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.appBarTitle});
  final String appBarTitle;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const AppBarPopIcon(),
      title: AppBarTitle(appBarTitle: appBarTitle),
      centerTitle: true,
    );
  }
}
