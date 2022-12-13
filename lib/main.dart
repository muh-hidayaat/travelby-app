import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelby_app/cubit/auth_cubit.dart';
import 'package:travelby_app/cubit/page_cubit.dart';
import 'package:travelby_app/ui/pages/content/checkout_page.dart';
import 'package:travelby_app/ui/pages/content/choose_seat_page.dart';
import 'package:travelby_app/ui/pages/content/succes_checkout_page.dart';
import 'package:travelby_app/ui/pages/intro/get_started_page.dart';
import 'package:travelby_app/ui/pages/main_page.dart';
import 'package:travelby_app/ui/pages/auth/signup_page.dart';
import 'package:travelby_app/ui/pages/intro/splash_page.dart';

import 'ui/pages/content/detail_page.dart';
import 'ui/pages/intro/bonus_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/signup': (context) => SignupPage(),
          '/bonus': (context) => const BonusPage(),
          '/home': (context) => const MainPage(),
          '/detail': (context) => const DetailPage(),
          '/choose-seat': (context) => const ChooseSeatPage(),
          '/checkout': (context) => const CheckoutPage(),
          '/success-checkout': (context) => const SuccessCheckoutPage(),
        },
      ),
    );
  }
}
