import 'package:flutter/material.dart';
import 'package:stayinn/screens/booking_screen.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 114, 163, 249),
        centerTitle: true,
        title: const Text(
          "Search Results",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const BookingScreen();
                }));
              },
              child: Image.asset("assets/images/apright.png"),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 3),
            const Text("25 hotels available near you",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff222AF0))),

            const SizedBox(
              height: 1,
            ),

            ListTile(
              leading: Container(
                color: Colors.red,
                height: 400,
                child: Image.asset(
                  "assets/images/sp1.png",
                ),
              ),
            ),

            // SearchKelvino(),
            // SizedBox(height: 1),
            // SearchNikki(),
            // SizedBox(height: 1),
            // SearchAmaka(),
            // SizedBox(height: 1),
            // SearchMerridien(),
            // SizedBox(height: 1),
            // SearchRex(),
          ],
        ),
      ),
    );
  }
}
