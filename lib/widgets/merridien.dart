import 'package:flutter/material.dart';

class Merridien extends StatelessWidget {
  const Merridien({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      padding: const EdgeInsets.fromLTRB(11, 7, 52, 8),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff00AEFF)),
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/sp4.png",
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(
                //   width: 10,
                // ),
                const Text(
                  "Merridien Resorts",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),

                const Text(
                  "Asaba, Delta.",
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff78ff78),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: const Center(
                        child: Text(
                          '8.0',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            height: 2,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Very Good"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
