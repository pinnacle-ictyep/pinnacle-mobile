import 'package:flutter/material.dart';
import 'package:stayinn/screens/home_screen.dart';
import 'package:stayinn/widgets/search_amaka.dart';
import 'package:stayinn/widgets/search_kelvino.dart';
import 'package:stayinn/widgets/search_merridien.dart';
import 'package:stayinn/widgets/search_rex.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomeScreen(selectedindx: 0);
                          }));
                        },
                        child: const Icon(Icons.arrow_back_ios_sharp)),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 200,
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(horizontal: 60),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              const SizedBox(
                height: 1,
              ),
              const SearchKelvino(),
              // SizedBox(height: 1),
              // Nikki(),
              const SizedBox(height: 1),
              const SearchAmaka(),
              const SizedBox(height: 1),
              const SearchMerridien(),
              const SizedBox(height: 1),
              const SearchRex(),
            ],
          ),
        ),
      ),
    );
  }
}
