import 'package:flutter/material.dart';
import 'package:stayinn/screens/confirm_booking.dart';
import 'package:stayinn/screens/pinnacle_booking_gallery.dart';
import 'package:stayinn/screens/pinnacle_features.dart';
import 'package:stayinn/screens/pinnacle_hotel_location.dart';
import 'package:stayinn/screens/pinnacle_hotel_reviews.dart';
import 'package:stayinn/screens/pinnacle_hotel_rooms.dart';

class PinnacleHotelBooking extends StatefulWidget {
  const PinnacleHotelBooking({super.key});

  @override
  State<PinnacleHotelBooking> createState() => _PinnacleHotelBookingState();
}

List pages = [
  const PinnacleFeatures(),
  const PinnacleBookingGallery(),
  const PinnacleHotelRooms(),
  const PinnacleHotelLocation(),
  const PinnacleHotelReviews(),
];

List cat = ['Features', 'Gallery', 'Rooms', 'Location', 'Reviews'];

String selectedIndex = '';
Widget selectedWidget = const PinnacleFeatures();
List activeTab = [];

class _PinnacleHotelBookingState extends State<PinnacleHotelBooking> {
  onTapped() {
    setState(() {
      if (cat[0] == selectedIndex) {
        selectedWidget = pages[0];
        activeTab.clear();
        activeTab.add(0);
      }
      if (cat[1] == selectedIndex) {
        selectedWidget = pages[1];
        activeTab.clear();
        activeTab.add(1);
      }
      if (cat[2] == selectedIndex) {
        selectedWidget = pages[2];
        activeTab.clear();
        activeTab.add(2);
      }
      if (cat[3] == selectedIndex) {
        selectedWidget = pages[3];
        activeTab.clear();
        activeTab.add(3);
      }
      if (cat[4] == selectedIndex) {
        selectedWidget = pages[4];
        activeTab.clear();
        activeTab.add(4);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(11, 0, 16, 0),
                    width: double.infinity,
                    height: 235,
                    decoration: const BoxDecoration(
                      color: Color(0xffd9d9d9),
                      image: DecorationImage(
                        image: AssetImage("assets/images/pinnaclepic.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 12),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xffFFFFFF),
                            size: 30,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            "Pinnacle Resorts",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 65, top: 5),
                          child: Icon(
                            Icons.favorite_outline,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 'Features';
                            onTapped();
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                              color: activeTab.contains(0)
                                  ? Colors.blue
                                  : Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/feature.png",
                                  width: 11.56,
                                  height: 11.56,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 'Features';
                                      onTapped();
                                    });
                                  },
                                  child: Text(
                                    cat[0],
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 'Gallery';
                            onTapped();
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                              color: activeTab.contains(1)
                                  ? Colors.blue
                                  : Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/gallery.png",
                                  width: 11.56,
                                  height: 11.56,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 'Gallery';
                                      onTapped();
                                    });
                                  },
                                  child: Text(
                                    cat[1],
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 'Rooms';
                            onTapped();
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                              color: activeTab.contains(2)
                                  ? Colors.blue
                                  : Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/rooms.png",
                                  width: 11.56,
                                  height: 11.56,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 'Rooms';
                                      onTapped();
                                    });
                                  },
                                  child: Text(
                                    cat[2],
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 'Location';
                            onTapped();
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                              color: activeTab.contains(3)
                                  ? Colors.blue
                                  : Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/location.png",
                                  width: 11.56,
                                  height: 11.56,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 'Location';
                                      onTapped();
                                    });
                                  },
                                  child: Text(
                                    cat[3],
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 'Reviews';
                            onTapped();
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                              color: activeTab.contains(4)
                                  ? Colors.blue
                                  : Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/review.png",
                                  width: 11.56,
                                  height: 11.56,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 'Reviews';
                                      onTapped();
                                    });
                                  },
                                  child: Text(
                                    cat[4],
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              selectedWidget,
              Container(
                margin: const EdgeInsets.fromLTRB(47, 0, 55, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ConfirmBooking();
                    }));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff222af0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'BOOK A ROOM',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
