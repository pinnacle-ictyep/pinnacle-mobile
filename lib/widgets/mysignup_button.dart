import 'package:flutter/material.dart';

class MySignUpButton extends StatelessWidget {
  const MySignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 45),
      decoration: BoxDecoration(
        color: const Color(0xFF222AF0),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Text(
          "Sign Up",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}
