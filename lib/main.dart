import 'package:flutter/material.dart';
import 'package:stayinn/screens/home_screen.dart';
import 'package:stayinn/screens/login_screen.dart';
import 'package:stayinn/screens/onboard_screen_3.dart';
import 'package:stayinn/screens/onboarding_screen.dart';
import 'package:stayinn/screens/payment_summary.dart';
import 'package:stayinn/screens/splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stayinn',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "/onboardingScreen": (context) => const OnboardingScreen(),
        "/OnboardingScreen3": (context) => const OnboardingScreen3(),
        "/LoginScreen": (context) => const LoginScreen(),
        "/HomeScreen": (context) => const HomeScreen(selectedindx: 0),
        "/PaymentSummary": (context) => const PaymentSummary(),
      },
    );
  }
}
