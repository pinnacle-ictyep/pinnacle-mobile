import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stayinn/screens/onboard_screen_3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var size, height, width;
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        body: SizedBox(
      child: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              // Onboarding Screen 1
              Container(
                color: const Color(0xFFFFFFFF),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 60, 0, 20),
                      ),
                      GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(3);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Center(
                              child: Image.asset("assets/images/Skip.png")),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image.asset("assets/images/onboarding1.png"),
                      const Padding(padding: EdgeInsets.only(top: 50)),
                      const Text(
                        'Book A Hotel Now',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      const Text(
                        "Find a hotel of your choice, \nget booked in few steps ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF303030),
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn,
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
                              "Next",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Onboarding Screen 2,
              Container(
                color: const Color(0xFFFFFFFF),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(top: 80)),
                      GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(2);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 250),
                          child: Center(
                              child: Image.asset("assets/images/Skip.png")),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image.asset(
                        "assets/images/guest.png",
                      ),
                      const Padding(padding: EdgeInsets.only(top: 90)),
                      const Text(
                        'Affordable and sleek',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      const Text(
                        "There is a room for every budget",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF303030),
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn,
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
                              "Next",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const OnboardingScreen3(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 70, 0, 70),
            child: Container(
              alignment: const Alignment(0, 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
