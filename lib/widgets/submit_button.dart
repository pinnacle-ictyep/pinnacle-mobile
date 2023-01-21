import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
  const SubmitButton({super.key});

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 60),
      decoration: BoxDecoration(
        color: const Color(0xFF222AF0),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Text(
          "Submit",
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
