import 'package:flutter/material.dart';
import 'package:pill_mate/core/utils/app_assets.dart';


import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    this.onItemTapped,
    required this.selectedIndex,
  });
  final void Function(int)? onItemTapped;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.kLightPrimaryColor,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: boldStyle(fontSize: 12, color: AppColors.kPrimaryColor),
      unselectedLabelStyle: boldStyle(fontSize: 12, color: AppColors.kPrimaryColor),
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(ImageAssets.home),
          label: AppStrings.home,
          activeIcon: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Image.asset(ImageAssets.selectHome),

          ),
        ),
        BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.heart),
            label: AppStrings.favorites,
            activeIcon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Image.asset(ImageAssets.selectHeart),

            )

        ),
        BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.shopping),
            label: AppStrings.cart,
            activeIcon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Image.asset(ImageAssets.selectShopping),

            )),
        BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.profile),
            label: AppStrings.account,
            activeIcon: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)),
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Image.asset(ImageAssets.selectProfile),

            )),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: AppColors.kPrimaryColor,
      onTap: onItemTapped,
    );
  }
}