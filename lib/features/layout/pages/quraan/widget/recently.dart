import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/core/theme/app_colors.dart';
import 'package:new_app/models/recently_data.dart';

class MostRecently extends StatelessWidget {
 final RecentlyData recentlyData;
  const MostRecently({super.key,
    required this.recentlyData,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 283,
      margin: EdgeInsets.symmetric(horizontal: 5,),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                recentlyData.suraNameEN,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(
                recentlyData.suraNameAR,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                recentlyData.suraVerses,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
             ],
            ),
          Image.asset(AppAssets.quraanRecent),
        ],
      ),
    );
  }
}
