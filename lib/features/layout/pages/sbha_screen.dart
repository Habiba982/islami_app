import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/core/theme/app_colors.dart';

class SbhaScreen extends StatefulWidget {
  const SbhaScreen({super.key});

  @override
  State<SbhaScreen> createState() => _SbhaScreenState();
}

class _SbhaScreenState extends State<SbhaScreen> {
  int counter = 0;
  double angle = 0;
  int currentIndex = 0;
  List<String> zekr = [
    "الله أكبر",
    "لا إله إلا الله",
    "الحمدلله",
    " سبحان الله"
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
            AppAssets.sebhaBG,
          ),
        ),
      ),
      child: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  AppAssets.fullLogo,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Janna",
                    color: AppColors.white,
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: _sebhaTap,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: size.height * 0.02, bottom: size.height * 0.05),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Center(
                            child: Transform.rotate(
                              angle: angle,
                              child: Image.asset(
                                AppAssets.sebha,
                                width: size.width * 0.99,
                                height: size.height * 0.99,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: size.height * 0.15,
                            ),
                            child: Text(
                              counter.toString(),
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Janna",
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          Text(
                            zekr[currentIndex],
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Janna",
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _sebhaTap() {
    setState(() {
      counter++;
      if (counter == 33) {
        counter = 0;
        currentIndex++;
        if (currentIndex == 4) {
          currentIndex = 0;
        }
      }
      angle += 1;
    });
  }
}
