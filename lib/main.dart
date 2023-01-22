// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:stayinn/models/user_model.dart';
import 'package:stayinn/screens/home_screen.dart';
import 'package:stayinn/screens/login_screen.dart';
import 'package:stayinn/screens/onboard_screen_3.dart';
import 'package:stayinn/screens/onboarding_screen.dart';
import 'package:stayinn/screens/payment_summary.dart';
import 'package:stayinn/screens/splash_Screen.dart';
import 'package:stayinn/sharedpreference/user_preference.dart';

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
        "/": (context) => const checkAuth(),
        "/onboardingScreen": (context) => const OnboardingScreen(),
        "/OnboardingScreen3": (context) => const OnboardingScreen3(),
        "/LoginScreen": (context) => const LoginScreen(),
        "/HomeScreen": (context) => const HomeScreen(selectedindx: 0),
        "/PaymentSummary": (context) => const PaymentSummary(),
      },
    );
  }
}

class checkAuth extends StatefulWidget {
  const checkAuth({super.key});

  @override
  State<checkAuth> createState() => _checkAuthState();
}

class _checkAuthState extends State<checkAuth> {
  // bool isAuth = false;

  // _checkIfLoggedIn() async {
  //   // Obtain shared preferences.
  //   final storage = await SharedPreferences.getInstance();
  //   var authToken = storage.getString("auth_token");
  //   print(authToken);
  //   if (authToken != null) {
  //     setState(() => isAuth = true);
  //   }
  // }

  // @override
  // void initState() {
  //   _checkIfLoggedIn();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    Future<User> getuserData() => UserPreference().getUser();
    return FutureBuilder(
        future: getuserData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const CircularProgressIndicator();

            default:
              // print(snapshot.data);
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.data!.token == "null") {
                print(222);
                return const SplashScreen();
              } else {
                return const HomeScreen(selectedindx: 0);
              }
            // Widget child;
            // if (isAuth == true) {
            //   child = const HomeScreen(selectedindx: 0);
            // } else {
            //   child = const SplashScreen();
            // }
            // return child;
          }
        });
  }
}
