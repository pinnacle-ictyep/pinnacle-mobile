import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stayinn/screens/search_result_screen.dart';
import 'package:stayinn/services/provider.dart';

import '../../services/api_service.dart';
// import 'package:stayinn/widgets/Hotels/most_viewed_widgets.dart';
// import 'package:stayinn/widgets/Hotels/popular_widgets.dart';
// import 'package:stayinn/widgets/Hotels/recommended_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeWidget> with TickerProviderStateMixin {
  List images = [
    "amaka.png",
    "rex.png",
    "merri.png",
    "pinprice.png",
    "sp1.png",
    "sp1.png",
    "sp2.png",
    "pinprice.png",
    "sp3.png",
    "sp4.png",
    "sp5.png",
  ];
  List imagesRecommended = [
    "amaka.png",
    "rex.png",
    "merri.png",
    "pinprice.png",
    "pinprice.png",
    "sp1.png",
    "sp2.png",
    "sp3.png",
    "sp4.png",
    "sp5.png",
  ];
  List imagesPopular = [
    "merri.png",
    "pinprice.png",
    "amaka.png",
    "rex.png",
    "sp2.png",
    "sp4.png",
    "pinprice.png",
    "sp1.png",
    "sp5.png",
    "sp3.png",
  ];
  List imagesMostViewed = [
    "pinprice.png",
    "amaka.png",
    "merri.png",
    "rex.png",
    "sp5.png",
    "sp3.png",
    "sp2.png",
    "sp4.png",
    "sp1.png",
    "pinprice.png",
  ];

  final String _baseUrl = "https://pinnacle.ictyepprojects.com/api/hotel";

  final String Url = "https://pinnacle.ictyepprojects.com/api/storage/";

  @override
  void initState() {
    ApiService().userToken().then((token) {
      GetDataProvider().getData(_baseUrl, "Bearer $token").then((response) {
        final Map<String, dynamic> responseDate = json.decode(response.body);
        print(response.statusCode);
        if (response.statusCode == 200) {
          print(responseDate['hotels']);
          setState(() {
            for (var element in responseDate['hotels']) {
              imagesRecommended.add(element['image']);
            }
          });
        }
        // print(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Current location",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0x7f000000),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/pinmap.png"),
                const Text(
                  "Asaba, Delta",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0x7f000000),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return const SearchResultScreen();
                      }),
                    ),
                  );
                },
                child: const Text(
                  "Search Hotels",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            // hintText: "Search Hotels",
            // hintStyle: const TextStyle(
            //   fontSize: 20,
            //   fontWeight: FontWeight.w700,
            //   color: Color(0x7f000000),
            // ),
            // suffixIcon: const Padding(
            //   padding: EdgeInsets.only(right: 10),
            //   child: Icon(Icons.mic_none_outlined, size: 50),
            // ),
            // border: OutlineInputBorder(
            //     borderSide: BorderSide.none,
            //     borderRadius: BorderRadius.circular(30)),
            // fillColor: const Color(0xFFC4C4C4),
            // filled: true,

            const SizedBox(height: 10),
            FittedBox(
              child: SizedBox(
                  height: 110,
                  width: 300,
                  child: Image.asset("assets/images/homepic1.png")),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Hotels in Asaba",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF222AF0),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  onTap: (value) {},
                  controller: tabController,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  labelColor: Colors.blue,
                  unselectedLabelColor: const Color(0xffC4C4C4),
                  tabs: const [
                    Tab(text: "Recommended"),
                    Tab(text: "Popular"),
                    Tab(text: "Most Viewed"),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 300,
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        width: 200,
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/" + imagesRecommended[index],
                              ),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/" + imagesPopular[index],
                              ),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 300,
                        margin: const EdgeInsets.only(right: 10, top: 10),
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/" + imagesMostViewed[index],
                              ),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
