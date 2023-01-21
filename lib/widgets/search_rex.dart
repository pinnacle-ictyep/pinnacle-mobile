import 'package:flutter/material.dart';
import 'package:stayinn/widgets/custom_text.dart';

class SearchRex extends StatelessWidget {
  const SearchRex({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 20, 53, 8),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/sp5.png",
                scale: 0.8,
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 0),
                  child: CustomText(
                      text: "Rex Hotel & Suites",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400))),
              Padding(
                padding: const EdgeInsets.only(
                    left: 5, right: 18, top: 0, bottom: 5),
                child: Row(
                  children: [
                    Image.asset("assets/images/location.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Infant Jesus",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text(
                  ' ₦25,000.00/Night',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    height: 2,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Color(0xffFFD700),
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xffFFD700),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
