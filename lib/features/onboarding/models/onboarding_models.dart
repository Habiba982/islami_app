class OnboardingModels {
  String imagePath;
  String title;
  String? desc;

  OnboardingModels({
    required this.imagePath,
    required this.title,
    this.desc,
  });

  static List<OnboardingModels> onboardingList = [
    OnboardingModels(
      imagePath: "assets/images_png/Tarheeb.png",
      title: "Welcome To Islami App",
    ),
    OnboardingModels(
      imagePath: "assets/images_png/kabba.png",
      title: "Welcome To Islami App",
      desc: "We Are Very Excited To Have You In Our Community",
    ),
    OnboardingModels(
      imagePath: "assets/images_png/welcome.png",
      title: "Reading the Quran",
      desc: "Read, and your Lord is the Most Generous",
    ),
    OnboardingModels(
      imagePath: "assets/images_png/duaa.png",
      title: "Bearish",
      desc: "Praise the name of your Lord, the Most High",
    ),
    OnboardingModels(
      imagePath: "assets/images_png/radio.png",
      title: "Holy Quran Radio",
      desc:
          "You can listen to the Holy Quran Radio through the application for free and easily",
    ),
  ];
}
