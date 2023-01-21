import 'package:flutter/material.dart';

class MyBookButton extends StatelessWidget {
  const MyBookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 90),
      decoration: BoxDecoration(
        color: const Color(0xFF222AF0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "BOOK AGAIN",
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
