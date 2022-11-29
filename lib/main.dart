import 'package:flutter/material.dart';
import 'package:travelby_app/ui/pages/intro/get_started_page.dart';
import 'package:travelby_app/ui/pages/main_page.dart';
import 'package:travelby_app/ui/pages/auth/signup_page.dart';
import 'package:travelby_app/ui/pages/intro/splash_page.dart';

import 'ui/pages/content/detail_page.dart';
import 'ui/pages/intro/bonus_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/signup': (context) => const SignupPage(),
        '/bonus': (context) => const BonusPage(),
        '/home': (context) => const MainPage(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}
