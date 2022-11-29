import 'package:flutter/material.dart';
import 'package:travelby_app/ui/pages/get_started_page.dart';
import 'package:travelby_app/ui/pages/home_page.dart';
import 'package:travelby_app/ui/pages/signup_page.dart';
import 'package:travelby_app/ui/pages/splash_page.dart';

import 'ui/pages/bonus_page.dart';

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
        '/home': (context) => const HomePage(),
      },
    );
  }
}
