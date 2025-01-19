import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/features/onboarding/pages/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "splash";
  static Duration _duration = Duration(
    milliseconds: 1750,
  );

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnboardingScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppAssets.splashBG),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: FadeInDown(
                duration: SplashScreen._duration,
                child: Image.asset(
                  AppAssets.lamp,
                  height: size.height * 0.35,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: size.height * 0.25,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: FadeInLeft(
                  duration: SplashScreen._duration,
                  child: Image.asset(
                    AppAssets.leftFlower,
                    width: size.width * 0.20,
                    height: size.height * 0.20,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: size.height * 0.25,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: FadeInRight(
                  duration: SplashScreen._duration,
                  child: Image.asset(
                    AppAssets.rightFlower,
                    width: size.width * 0.20,
                    height: size.height * 0.20,
                  ),
                ),
              ),
            ),
            Center(
              child: ZoomIn(
                duration: SplashScreen._duration,
                child: Image.asset(
                  AppAssets.logo,
                  height: size.height * 0.30,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: size.height * 0.25,
                top: size.height * 0.53,
              ),
              child: ZoomIn(
                duration: SplashScreen._duration,
                child: Image.asset(
                  AppAssets.logoText,
                  height: size.height * 0.20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: size.height * 0.15,
                bottom: size.height * 0.10,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeInUp(
                  duration: SplashScreen._duration,
                  child: Image.asset(
                    AppAssets.routeLogo,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: size.height * 0.09,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeInUp(
                  duration: SplashScreen._duration,
                  child: Image.asset(
                    AppAssets.routeBranding,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
