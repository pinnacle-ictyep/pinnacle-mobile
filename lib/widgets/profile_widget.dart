import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final Image image;
  final String text;
  final TextStyle style;
  const Profile(
      {super.key,
      required this.text,
      required this.image,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 45, top: 40),
      child: Row(
        children: [
          image,
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
