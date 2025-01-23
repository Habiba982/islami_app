import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/features/layout/pages/hadeeth/widgets/hadith_data.dart';

class HadithCard extends StatelessWidget {
  final HadthData hadithData;

  const HadithCard({super.key, required this.hadithData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        bottom: 15,
        top: 10,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.hadithCard),
          fit: BoxFit.fitHeight,
        ),
        ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 45,
          ),
          Text(
            hadithData.hadithTitle,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
                fontFamily: "Janna",
            ),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                children: [
                  Text(hadithData.hadithContent,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Janna",
                      )),
                  SizedBox(
                    height: 45,
                  )
                ],
              ),
            ),
            ),
          ],
      ),
    );
  }
}
