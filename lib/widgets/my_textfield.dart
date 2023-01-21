import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  final TextInputType? keyboardType;

  const MyTextField(
      {super.key,
      this.controller,
      required this.hintText,
      required this.obscureText,
      this.suffixIcon,
      this.keyboardType,
      this.validator,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: const Color.fromARGB(255, 244, 239, 239),
          filled: true,
          hintText: hintText,
          suffixIcon: suffixIcon,
        ),
        validator: validator,
        onChanged: onChanged,
      ),
    );
  }
}
