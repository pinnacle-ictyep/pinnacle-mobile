import 'package:flutter/material.dart';
import 'package:stayinn/widgets/custom_text.dart';

class Kelvino extends StatelessWidget {
  const Kelvino({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 22),
      child: Container(
        padding: const EdgeInsets.fromLTRB(11, 7, 0, 8),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff00AEFF)),
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/images/sp1.png",
            ),
            Column(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: CustomText(
                        text: "Kelvino Hotel & Suite",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700))),
                const Text("Asaba, Delta."),
                Row(
                  children: [
                    Container(
                      // margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      //  width: 20,
                      //  height: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff78ff78),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: const Center(
                        child: Text(
                          '7.0',
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
                    const Text("Good"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//       
