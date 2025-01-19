import 'package:flutter/material.dart';
import 'package:new_app/core/theme/app_colors.dart';
import 'package:new_app/features/onboarding/models/onboarding_models.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingModels onboardingModels;

  const OnboardingItem({super.key, required this.onboardingModels});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Image.asset(
            onboardingModels.imagePath,
            height: size.height * 0.35,
          ),
        ),
        Text(
          onboardingModels.title,
          style: TextStyle(
            fontFamily: "janna",
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        Text(
          onboardingModels.desc ?? "",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "janna",
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
