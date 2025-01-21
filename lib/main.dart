import 'package:flutter/material.dart';
import 'package:new_app/core/constant/servecies/local_storage_service.dart';
import 'package:new_app/features/layout/pages/quraan/quraan_details.dart';
import 'package:new_app/features/onboarding/pages/onboarding_screen.dart';
import 'package:new_app/features/splash/pages/splash_screen.dart';

import 'features/layout/pages/layout_screen.dart';
import 'features/layout/pages/quraan/quraan_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await LocalStorageService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        OnboardingScreen.routeName: (_) => const OnboardingScreen(),
        LayoutScreen.routeName: (_) => const LayoutScreen(),
        QuraanDetails.routeName:(_)=> const QuraanDetails(),
      },
    );
  }
}
