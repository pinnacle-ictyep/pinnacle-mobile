import 'package:flutter/material.dart';
import 'package:stayinn/widgets/BottomNB/bookings_widget.dart';
import 'package:stayinn/widgets/BottomNB/favorite_widget.dart';
import 'package:stayinn/widgets/BottomNB/home_widget.dart';
import 'package:stayinn/widgets/BottomNB/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.selectedindx});
  final int selectedindx;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List _widgetOption = <Widget>[
    HomeWidget(),
    BookingWidget(),
    FavoriteWidget(),
    ProfileWidget(),
  ];
  List<int> selectedbtn = [0];
  int selectedint = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOption[widget.selectedindx],
      ),

      // body: SafeArea(
      //   child: ListView(
      //     children: [
      //       const Center(
      //         child: Padding(
      //           padding: EdgeInsets.only(top: 10),
      //           child: Text(
      //             "Current location",
      //             style: TextStyle(
      //               fontSize: 25,
      //               fontWeight: FontWeight.w700,
      //               color: Color(0x7f000000),
      //             ),
      //           ),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(left: 115),
      //         child: Row(
      //           children: [
      //             Image.asset("assets/images/pinmap.png"),
      //             const Text(
      //               "Asaba, Delta",
      //               style: TextStyle(
      //                 fontSize: 25,
      //                 fontWeight: FontWeight.w700,
      //                 color: Color(0x7f000000),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //       const SizedBox(height: 9),
      //       Padding(
      //         padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      //         child: TextFormField(
      //           decoration: InputDecoration(
      //             prefixIcon: Padding(
      //               padding: const EdgeInsets.only(left: 10),
      //               child: GestureDetector(
      //                   onTap: () {
      //                     Navigator.push(context,
      //                         MaterialPageRoute(builder: ((context) {
      //                       return const SearchResultScreen();
      //                     })));
      //                   },
      //                   child: const Icon(Icons.search, size: 50)),
      //             ),
      //             hintText: "Search Hotels",
      //             hintStyle: const TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.w700,
      //               color: Color(0x7f000000),
      //             ),
      //             suffixIcon: const Padding(
      //               padding: EdgeInsets.only(right: 10),
      //               child: Icon(Icons.mic_none_outlined, size: 50),
      //             ),
      //             border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(30)),
      //             fillColor: const Color(0xFFC4C4C4),
      //             filled: true,
      //           ),
      //         ),
      //       ),
      //       const SizedBox(height: 10),
      //       FittedBox(
      //         child: SizedBox(
      //             height: 110,
      //             width: 300,
      //             child: Image.asset("assets/images/homepic1.png")),
      //       ),
      //       const SizedBox(height: 1),
      //       const Padding(
      //         padding: EdgeInsets.only(left: 20),
      //         child: Text(
      //           "Hotels in Asaba",
      //           style: TextStyle(
      //             fontSize: 30,
      //             fontWeight: FontWeight.w700,
      //             color: Color(0xFF222AF0),
      //           ),
      //         ),
      //       ),
      //       const SizedBox(height: 10),
      //       Container(
      //         child: Align(
      //           alignment: Alignment.centerLeft,
      //           child: TabBar(
      //             controller: tabController,
      //             isScrollable: true,
      //             labelPadding: const EdgeInsets.only(left: 20, right: 20),
      //             labelColor: Colors.blue,
      //             unselectedLabelColor: const Color(0xffC4C4C4),
      //             tabs: const [
      //               Tab(
      //                 text: "Recommended",
      //               ),
      //               Tab(
      //                 text: "Popular",
      //               ),
      //               Tab(
      //                 text: "Most Viewed",
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         width: double.maxFinite,
      //         height: 300,
      //         child: TabBarView(
      //           controller: tabController,
      //           children: [
      //             ListView.builder(
      //                 scrollDirection: Axis.horizontal,
      //                 itemCount: 6,
      //                 itemBuilder: (_, index) {
      //                   return Container(
      //                     height: 300,
      //                     width: 200,
      //                     margin: const EdgeInsets.only(right: 10, top: 10),
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(20),
      //                       image: const DecorationImage(
      //                           image: AssetImage(
      //                             "assets/images/sp1.png",
      //                           ),
      //                           fit: BoxFit.cover),
      //                     ),
      //                   );
      //                 }),
      //             ListView.builder(
      //                 scrollDirection: Axis.horizontal,
      //                 itemCount: 6,
      //                 itemBuilder: (_, index) {
      //                   return Container(
      //                     height: 300,
      //                     width: 200,
      //                     margin: const EdgeInsets.only(right: 10, top: 10),
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(20),
      //                       image: const DecorationImage(
      //                           image: AssetImage(
      //                             "assets/images/sp1.png",
      //                           ),
      //                           fit: BoxFit.cover),
      //                     ),
      //                   );
      //                 }),
      //             ListView.builder(
      //                 itemCount: 6,
      //                 scrollDirection: Axis.horizontal,
      //                 itemBuilder: (_, index) {
      //                   return Container(
      //                     height: 300,
      //                     width: 200,
      //                     margin: const EdgeInsets.only(right: 10, top: 10),
      //                     decoration: BoxDecoration(
      //                       borderRadius: BorderRadius.circular(20),
      //                       image: const DecorationImage(
      //                           image: AssetImage(
      //                             "assets/images/sp1.png",
      //                           ),
      //                           fit: BoxFit.cover),
      //                     ),
      //                   );
      //                 })
      //           ],
      //         ),
      //       ),
      //       const SizedBox(height: 15),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return HomeScreen(
                selectedindx: value,
              );
            }));
          });
        },
        currentIndex: widget.selectedindx,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm_outlined),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
