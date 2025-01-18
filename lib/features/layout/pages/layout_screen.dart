import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/features/layout/pages/hadeeth_screen.dart';
import 'package:new_app/features/layout/pages/time_screen.dart';
import 'package:new_app/features/layout/pages/quraan_screen.dart';
import 'package:new_app/features/layout/pages/radio_screen.dart';
import 'package:new_app/features/layout/pages/sbha_screen.dart';
import 'package:new_app/features/layout/widgets/custom_navBar_item.dart';
import '../../../core/theme/app_colors.dart';

class LayoutScreen extends StatefulWidget {
  static String routeName = "/layout";

  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    QuraanScreen(),
    HadeethScreen(),
    SbhaScreen(),
    RadioScreen(),
    TimeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColor,
        fixedColor: AppColors.white,
        showUnselectedLabels: false,
        items: [
          //Quraan Icon
          BottomNavigationBarItem(
              icon: CustomNavbarItem(
                  SelectedIndex: selectedIndex,
                  navBarItem: 0,
                  iconPath: AppAssets.quraanIcon),
              label: "Quraan"),
          //Hadeeth Icon
          BottomNavigationBarItem(
              icon: CustomNavbarItem(
                  SelectedIndex: selectedIndex,
                  navBarItem: 1,
                  iconPath: AppAssets.hadeethIcon),
              label: "Hadeeth"),
          //Sbha Icon
          BottomNavigationBarItem(
              icon: CustomNavbarItem(
                  SelectedIndex: selectedIndex,
                  navBarItem: 2,
                  iconPath: AppAssets.sbhaIcon),
              label: "Sbha"),
          //Radio Icon
          BottomNavigationBarItem(
              icon: CustomNavbarItem(
                  SelectedIndex: selectedIndex,
                  navBarItem: 3,
                  iconPath: AppAssets.radioIcon),
              label: "Radio"),
          //Time Icon
          BottomNavigationBarItem(
              icon: CustomNavbarItem(
                  SelectedIndex: selectedIndex,
                  navBarItem: 4,
                  iconPath: AppAssets.timeIcon),
              label: "Time"),
        ],
      ),
      body: screens[selectedIndex],
    );
  }
}
