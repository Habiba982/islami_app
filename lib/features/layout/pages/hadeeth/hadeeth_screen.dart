import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/features/layout/pages/hadeeth/widgets/hadith_card.dart';
import 'package:new_app/features/layout/pages/hadeeth/widgets/hadith_data.dart';

class HadeethScreen extends StatefulWidget {
  const HadeethScreen({super.key});

  @override
  State<HadeethScreen> createState() => _HadeethScreenState();
}

class _HadeethScreenState extends State<HadeethScreen> {
  List<HadthData> hadithDataList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithDataList.isEmpty) loadHadithData();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AppAssets.hadithBG,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppAssets.fullLogo2),
          Expanded(
            child: CarouselSlider(
              items: hadithDataList.map(
                (e) {
                  return HadithCard(
                    hadithData: e,
                  );
                },
              ).toList(),
              options: CarouselOptions(
                //height: 400,
                aspectRatio: 0.7,
                viewportFraction: 0.7,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.2,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  loadHadithData() async {
    String content = await rootBundle.loadString("assets/hadith/ahadeth.txt");
    List<String> HadithList = content.split("#");

    for (var element in HadithList) {
      String oneHadith = element.trim();
      int index = oneHadith.indexOf("\n");

      String hadithTitle = oneHadith.substring(0, index);
      String hadithContent = oneHadith.substring(index + 1);

      var hadithData =
          HadthData(hadithTitle: hadithTitle, hadithContent: hadithContent);
      hadithDataList.add(hadithData);
      setState(() {});
    }
  }
}
