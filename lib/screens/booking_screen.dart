import 'package:flutter/material.dart';
import 'package:stayinn/widgets/custom_text.dart';
import 'package:stayinn/widgets/kelvino.dart';
import 'package:stayinn/widgets/my_book_button.dart';
import 'package:stayinn/widgets/pinnacle.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 114, 163, 249),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.search, size: 50),
                    ),
                    hintText: "Search Hotels",
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0x7f000000),
                    ),
                    suffixIcon: const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.mic_none_outlined, size: 50),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)),
                    fillColor: const Color(0xFFC4C4C4),
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 21, right: 20, top: 10),
                child: Pinnacle(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21, right: 20, top: 5),
                child: Container(
                  //margin: const EdgeInsets.fromLTRB(0, 0, 12, 19),
                  padding: const EdgeInsets.fromLTRB(11, 7, 53, 8),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff00AEFF)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CustomText(
                              text: "Check in:",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700)),
                          CustomText(
                              text: "Dec 21, 2022",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700)),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 12)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CustomText(
                              text: "Check out:",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700)),
                          CustomText(
                              text: "Dec 23, 2022",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700)),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 25),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const MyBookButton(),
              const Padding(
                padding: EdgeInsets.only(top: 50),
              ),
              const Kelvino(),
              Padding(
                padding: const EdgeInsets.only(left: 21, right: 20, top: 5),
                child: Container(
                  //margin: const EdgeInsets.fromLTRB(0, 0, 12, 19),
                  padding: const EdgeInsets.fromLTRB(11, 7, 53, 8),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff00AEFF)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CustomText(
                              text: "Check in:",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700)),
                          CustomText(
                              text: "Sept 13, 2022",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700)),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 12)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CustomText(
                              text: "Check out:",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700)),
                          CustomText(
                              text: "Sept 21, 2022",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700)),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 25),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const MyBookButton(),
            ],
          )),
    );
  }
}
