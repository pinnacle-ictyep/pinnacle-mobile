import 'package:flutter/material.dart';
import 'package:stayinn/screens/login_screen.dart';

class OnboardingScreen3 extends StatefulWidget {
  const OnboardingScreen3({super.key});

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: const Color(0xFFFFFFFF),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 50),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                    height: 200,
                    child: Image.asset("assets/images/onboard3.png")),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 90)),
            const Text(
              'Special Member Discounts',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Text(
              "Check Out Our Discount Offers",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 17,
                  color: Color(0xFF303030),
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
              child: Container(
                height: 52,
                width: 255,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Color(0xFF222AF0),
                ),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
