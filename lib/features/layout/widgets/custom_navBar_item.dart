import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/core/theme/app_colors.dart';

class CustomNavbarItem extends StatelessWidget {
  final int SelectedIndex;
  final int navBarItem;
  final String iconPath;

  const CustomNavbarItem(
      {super.key,
      required this.SelectedIndex,
      required this.navBarItem,
      required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: SelectedIndex == navBarItem
            ? AppColors.secondaryColor.withOpacity(0.5)
            : Colors.transparent,
      ),
      child: ImageIcon(AssetImage(
        iconPath,
      )),
    );
  }
}
