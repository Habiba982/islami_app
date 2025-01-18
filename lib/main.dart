import 'package:flutter/material.dart';
import 'package:new_app/features/splash/pages/splash_screen.dart';
import 'features/layout/pages/layout_screen.dart';

void main() {
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
        LayoutScreen.routeName: (_) => const LayoutScreen(),
      },
    );
  }
}
