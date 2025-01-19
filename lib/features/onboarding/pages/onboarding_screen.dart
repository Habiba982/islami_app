import 'package:flutter/material.dart';
import 'package:new_app/core/constant/app_assets.dart';
import 'package:new_app/core/theme/app_colors.dart';
import 'package:new_app/features/layout/pages/layout_screen.dart';
import 'package:new_app/features/onboarding/models/onboarding_models.dart';
import 'package:new_app/features/onboarding/widgets/onboarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  static String routeName = "/onboarding";

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnboardingScreen> {
  var activateIndex = 0;
  var controller = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 16),
              Image.asset(
                AppAssets.fullLogo,
                height: size.height * 0.15,
              ),
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (index) {
                    activateIndex = index;
                    setState(() {});
                  },
                  itemCount: OnboardingModels.onboardingList.length,
                  itemBuilder: (context, index) {
                    var onboardingModels =
                        OnboardingModels.onboardingList[index];
                    return OnboardingItem(onboardingModels: onboardingModels);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: activateIndex != 0,
                    replacement: Spacer(),
                    child: TextButton(
                      onPressed: () {
                        if (activateIndex ==
                            OnboardingModels.onboardingList.length - 1) {
                          Navigator.pushReplacementNamed(
                              context, LayoutScreen.routeName);
                          return;
                        }
                        controller.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                        if (activateIndex > 0) {
                          activateIndex--;
                          return;
                        }
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                          fontFamily: "janna",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  AnimatedSmoothIndicator(
                    activeIndex: activateIndex,
                    count: OnboardingModels.onboardingList.length,
                    effect: ExpandingDotsEffect(
                      activeDotColor: AppColors.primaryColor,
                      dotColor: AppColors.darkGrey,
                      dotHeight: 13,
                      dotWidth: 13,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                      if (activateIndex >
                          OnboardingModels.onboardingList.length) {
                        activateIndex++;
                      }
                    },
                    child: Text(
                      activateIndex ==
                              OnboardingModels.onboardingList.length - 1
                          ? "Finish"
                          : "Next",
                      style: TextStyle(
                        fontFamily: "janna",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
