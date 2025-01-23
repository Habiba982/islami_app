import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/core/theme/app_colors.dart';
import 'package:new_app/models/sura_data.dart';

class SuraWidget extends StatelessWidget {
  final SuraData suraData;

  const SuraWidget({super.key,
    required this.suraData});

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
                suraData.id.toString(),
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
                suraData.suraNameEN,
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
               "${suraData.verses} Verses",
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
            suraData.suraNameAR,
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
