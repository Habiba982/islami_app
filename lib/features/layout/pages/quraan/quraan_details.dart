import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/core/theme/app_colors.dart';

class QuraanDetails extends StatelessWidget {
  static const String routeName="/QuraanDetails";
  const QuraanDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
       image:  AssetImage(AppAssets.QuraanDetilsScreen,),
           fit: BoxFit.fill,
      ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: AppColors.primaryColor,
          ),
          title: Text(
            "Al-Ftiha",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
              fontFamily: "Janna",
            ),
          ),
        ),
      ),
    );
  }
}

