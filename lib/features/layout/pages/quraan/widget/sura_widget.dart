import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/core/theme/app_colors.dart';

class SuraWidget extends StatelessWidget {
  final String suraNumber;
  final String suraNameEN;
  final String suraNameAR;
  final String AyaNumber;

  const SuraWidget({super.key,
    required this.suraNameEN,
    required this.suraNameAR,
    required this.AyaNumber,
    required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(image:
              AssetImage(AppAssets.raqamIcon),
              ),
            ),
              child:Text(
                suraNumber,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  fontFamily: "Janna",
                ),
              ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraNameEN,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  fontFamily: "Janna",
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "$AyaNumber Verses",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  fontFamily: "Janna",
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraNameAR,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
              fontFamily: "Janna",
            ),
          )
        ],
      ),
    );
  }
}
