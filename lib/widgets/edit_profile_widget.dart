import 'package:flutter/material.dart';

class EditWidget extends StatelessWidget {
  final Image image;
  final String text;
  final TextStyle style;
  const EditWidget(
      {super.key,
      required this.image,
      required this.text,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 65,
            ),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 79),
            child: image,
          ),
        ],
      ),
    );
  }
}
