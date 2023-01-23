import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stayinn/screens/confirm_booking.dart';
import 'package:stayinn/screens/pinnacle_booking_gallery.dart';
import 'package:stayinn/screens/pinnacle_features.dart';
import 'package:stayinn/screens/pinnacle_hotel_location.dart';
import 'package:stayinn/screens/pinnacle_hotel_reviews.dart';
import 'package:stayinn/screens/pinnacle_hotel_rooms.dart';
import 'package:stayinn/services/provider.dart';

import '../services/api_service.dart';
import '../services/auth_service.dart';

class PinnacleHotelBooking extends StatefulWidget {
  const PinnacleHotelBooking({super.key, required this.id});

  final String id;
  

  @override
  State<PinnacleHotelBooking> createState() => _PinnacleHotelBookingState();
}



class _PinnacleHotelBookingState extends State<PinnacleHotelBooking> {
  List<dynamic> _foundUsers = [];

  bool loading = true;

   dynamic _allUsers = null;

   dynamic gallery = [];

    dynamic roomType = [];

  final String _baseUrl = "https://pinnacle.ictyepprojects.com/api/hotel/" ;

  final String Url = "https://pinnacle.ictyepprojects.com/storage/";

  
  late String hotelsFeatures;

  @override
  void initState() {
    ApiService().userToken().then((token) {
      GetDataProvider().getData(_baseUrl +  widget.id, "Bearer $token").then((response) {
        final Map<String, dynamic> responseDate = json.decode(response.body);
        if (response.statusCode == 200) {
          // print(responseDate);
         
          setState(() {
             _allUsers = responseDate['hotels'];
             gallery = _allUsers['gallery'];
             roomType= _allUsers['roomtype'];
              loading = false;
            });
        }
        print(gallery);
        // PinnacleFeatures(hotelsFeatures: _allUsers);
      });
    });
    super.initState();
  }
List cat = ['Features', 'Gallery', 'Rooms', 'Location', 'Reviews'];



int selectedIndex = 0;
 int miniPrice = 20000;

  int miniCounter = 1;
  int standardCounter = 1;
  int rexCounter = 1;

  addMiniCounter() {
    setState(() {
      miniCounter++;
    });
  }

  subMiniCounter() {
    setState(() {
      miniCounter--;
    });
  }

  addStandardCounter() {
    setState(() {
      standardCounter++;
    });
  }

  subStandardCounter() {
    setState(() {
      standardCounter--;
    });
  }

  addRexCounter() {
    setState(() {
      rexCounter++;
    });
  }

  subRexCounter() {
    setState(() {
      rexCounter--;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // selectedWidget = PinnacleFeatures(hotelsFeatures: _allUsers,);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:
        
         loading == true ? 
             const Center(
              child: CircularProgressIndicator(
                color: Colors.redAccent,
              ),
             )
             : SingleChildScrollView(
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
                    child:  AuthService().checkIfImage(_allUsers["image"]) ?
                                        
                                         Image.network(
                                           Url + _allUsers["image"],
                                            fit: BoxFit.fill,
                                         ) : 
                                         Container(
                                          // width: 150,
                                          // height: 100,
                                          color: Colors.red,
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
                         Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            _allUsers['name'],
                            style: const TextStyle(
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
                            selectedIndex =0;
                            // onTapped();
                          });
                        },
                        child: Container(
                          width: 80,
                          height: 20,
                          decoration: BoxDecoration(
                              color: 
                              selectedIndex == 0
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
                                      selectedIndex =0;
                                      
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
                            //  selectedWidget = PinnacleBookingGallery();
                            selectedIndex = 1;
                            // onTapped();
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                              color:
                             selectedIndex == 1
                                  ?
                                   Colors.blue
                                  : 
                                  Colors.white,
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
                                      selectedIndex = 1;
                                      // onTapped();
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
                            selectedIndex = 2;
                            // onTapped();
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                              color: 
                              selectedIndex == 2
                                  ?
                               Colors.blue :
                                   Colors.white,
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
                                      selectedIndex = 2;
                                      // onTapped();
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
                            selectedIndex = 3;
                            // onTapped();
                          });
                        },
                        child: Container(
                          width: 75,
                          height: 20,
                          decoration: BoxDecoration(
                              color:
                             selectedIndex == 3
                                  ?
                               Colors.blue :
                                   Colors.white,
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
                                      selectedIndex = 3;
                                      // onTapped();
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
                            selectedIndex = 4;
                            // onTapped();
                          });
                        },
                        child: Container(
                          width: 75,
                          height: 20,
                          decoration: BoxDecoration(
                              color: 
                             selectedIndex == 4
                                  ?
                               Colors.blue :
                                   Colors.white,
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
                                      selectedIndex = 4;
                                      // onTapped();
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
              selectedIndex == 0 ? 
                hotelsFeaturesShow(context) :
                 selectedIndex == 1 ?
              hotelGallery(context) :
                    selectedIndex == 2 ?
                   hotelRoom(context) :
                   selectedIndex == 3 ?
                   hotelLocation(context) : 
                   selectedIndex == 4 ?
                     hotelReviews(context) :
                 Container()
              ,
              // Container(
              //   margin: const EdgeInsets.fromLTRB(47, 0, 55, 0),
              //   child: TextButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) {
              //         return const ConfirmBooking();
              //       }));
              //     },
              //     style: TextButton.styleFrom(
              //       padding: EdgeInsets.zero,
              //     ),
              //     child: Container(
              //       width: double.infinity,
              //       height: 50,
              //       decoration: BoxDecoration(
              //         color: const Color(0xff222af0),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: const Center(
              //         child: Text(
              //           'BOOK A ROOM',
              //           textAlign: TextAlign.center,
              //           style: TextStyle(
              //             fontSize: 24,
              //             fontWeight: FontWeight.w700,
              //             height: 1.2,
              //             color: Color(0xffffffff),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }



 Widget hotelRoom(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            width: double.infinity,
            height: 20.0,
            color: const Color(0xFFD9D9D9),
          ),
        ),
        // Row(
        //   children: const [
        //     Padding(
        //       padding: EdgeInsets.only(left: 70),
        //       child: Text(
        //         "Total:",
        //         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.only(left: 140),
        //       child: Text(
        //         "₦ 40, 000.00",
        //         style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
        //       ),
        //     ),
        //   ],
        // ),
          Container(
            height: 500,
            child: ListView.builder(
                          itemCount: roomType.length,
                          itemBuilder: (context, index) => 
                          Padding(
          padding: const EdgeInsets.only(left: 40, top: 5),
          child: Row(
            children: [
             Image.network(
              Url + roomType[index]["image"],
              cacheHeight: 120,
              cacheWidth: 120,
             ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                     Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        roomType[index]["title"],
                        style:const  TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Text(
                        "₦" + roomType[index]["price"],
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 30,
                      ),
                      child: Text(
                        "per night",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                      Container(
                margin: const EdgeInsets.fromLTRB(47, 0, 55, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ConfirmBooking(hotelName: _allUsers["name"], hotelAddress:  _allUsers["address"], roomType: roomType[index]["title"], 
                      price: roomType[index]["price"], hotel_id: _allUsers["id"], room_id: roomType[index]["id"],);
                    }));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width:140,
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
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          // height: 1.2,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 5, top: 10),

                    //   child: Row(
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 25),
                    //         child: Container(
                    //           width: 90.0,
                    //           height: 25.0,
                    //           decoration: BoxDecoration(
                    //               border: Border.all(
                    //                 color: Colors.blue,
                    //               ),
                    //               borderRadius: BorderRadius.circular(15)),
                    //           child: const Padding(
                    //             padding: EdgeInsets.only(left: 10, top: 3.5),
                    //             child: Text(
                    //               "Select Room",
                    //               style: TextStyle(
                    //                   fontSize: 12,
                    //                   fontWeight: FontWeight.w700),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 10),
                    //         child: Stack(children: [
                    //           Row(
                    //             children: [
                    //               GestureDetector(
                    //                 onTap: () {
                    //                   subMiniCounter();
                    //                 },
                    //                 child: Container(
                    //                   height: 37,
                    //                   width: 16,
                    //                   decoration: BoxDecoration(
                    //                       color: Colors.blue,
                    //                       borderRadius:
                    //                           BorderRadius.circular(10)),
                    //                   child: const Padding(
                    //                     padding: EdgeInsets.only(right: 18),
                    //                     child: Icon(Icons.remove_outlined,
                    //                         color: Colors.white),
                    //                   ),
                    //                 ),
                    //               ),
                    //               Padding(
                    //                 padding: const EdgeInsets.only(left: 8.0),
                    //                 child: SizedBox(
                    //                   width: 25,
                    //                   child: Text(
                    //                     "$miniCounter",
                    //                     style: const TextStyle(fontSize: 18),
                    //                   ),
                    //                 ),
                    //               ),
                    //               GestureDetector(
                    //                 onTap: () {
                    //                   addMiniCounter();
                    //                 },
                    //                 child: Container(
                    //                   height: 37,
                    //                   width: 16,
                    //                   decoration: BoxDecoration(
                    //                       color: Colors.blue,
                    //                       borderRadius:
                    //                           BorderRadius.circular(10)),
                    //                   child: const Padding(
                    //                     padding: EdgeInsets.only(right: 30),
                    //                     child: Icon(Icons.add,
                    //                         color: Colors.white),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ]),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      
            ),
          ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }



Widget hotelLocation(BuildContext context){
  return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            width: double.infinity,
            height: 20.0,
            color: const Color(0xFFD9D9D9),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Plot 25, Sir Asiedu Solomonn\nDrive, off Okpanam Road Asaba",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Color(0xff00AEFF)),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 20.0,
          color: const Color(0xFFD9D9D9),
        ),
        const SizedBox(height: 15),
        Image.asset("assets/images/map.png"),
        const SizedBox(height: 5),
      ],
    );
}






 Widget hotelGallery(BuildContext context) {
   return Container(
    padding: const EdgeInsets.all(20),
    height: 400,
     child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: gallery.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.network(Url + gallery[index]["img_scr"]),
                );
              }),
   );

     
  }




   Widget hotelsFeaturesShow(BuildContext context) {
    return Column(
      children: [
         Padding(
          padding: const EdgeInsets.only(right: 120),
          child: Text(
            _allUsers["name"],
            style: const TextStyle(
                fontSize: 16,
                color: Color(0xff000000),
                fontWeight: FontWeight.w400),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Image.asset(
                "assets/images/location.png",
                color: const Color(0xff000000),
                width: 15,
                height: 16.67,
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                _allUsers["address"],
                style:const  TextStyle(
                    fontSize: 16,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
         Padding(
          padding: const EdgeInsets.only(right: 140),
          child: Text(
            _allUsers["price"] + "/Night",
            style:const  TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000)),
          ),
        ),
        const SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
            children: const [
              Icon(Icons.star, color: Color(0xffFFD700), size: 24),
              Icon(Icons.star, color: Color(0xffFFD700), size: 24),
              Icon(Icons.star, color: Color(0xffFFD700), size: 24),
              Icon(Icons.star, color: Color(0xffFFD700), size: 24),
              Text("(120 Reviews)",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000))),
            ],
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 165),
              child: Text(
                "Description",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff00AEFF)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                margin: const EdgeInsets.fromLTRB(26, 0, 42, 12),
                padding: const EdgeInsets.fromLTRB(16, 16, 23, 21),
                width: double.infinity,
                height: 95,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff00aeff)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 245,
                    ),
                    child:  Text(
                       _allUsers["description"],
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(36, 0, 0, 0),
          child: Padding(
            padding: EdgeInsets.only(right: 215),
            child: Text(
              'Amenities',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.2,
                color: Color(0xff00aeff),
              ),
            ),
          ),
        ),
        const SizedBox(height: 2.0),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset("assets/images/tv.png"),
                ),
                Image.asset("assets/images/wifi.png"),
                Padding(
                  padding: const EdgeInsets.only(right: 26),
                  child: Image.asset("assets/images/pool.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Image.asset("assets/images/parking.png"),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      "TV",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Text(
                      "Wi-Fi",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                  ),
                  Text(
                    "Pool",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Free Parking",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 165),
          child: Text(
            "Hotel Rules",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.2,
              color: Color(0xff00aeff),
            ),
          ),
        ),
        const SizedBox(height: 0),
        Container(
          margin: const EdgeInsets.fromLTRB(26, 0, 42, 12),
          padding: const EdgeInsets.fromLTRB(16, 16, 23, 21),
          width: double.infinity,
          height: 95,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff00aeff)),
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: SizedBox(
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 245,
                ),
                child:  Text(
                  _allUsers["rules"],
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  

  Widget hotelReviews(BuildContext context) {
    return
      
        Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            width: double.infinity,
            height: 20.0,
            color: const Color(0xFFD9D9D9),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
          child: Container(
            padding: const EdgeInsets.fromLTRB(11, 7, 30, 8),
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
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15, left: 8),
                      child: Text(
                        "John Doe",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff78ff78),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: const Center(
                                  child: Text(
                                    '8.9',
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
                              const Text("Excellent"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 105, top: 0, bottom: 20),
                  child: Text(
                    "Wednesday. December 21, 2022",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "I had a wonderful time at Pinnacle Resorts. Their customer service\nwas on point and the overall user experience was great.",
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
          child: Container(
            padding: const EdgeInsets.fromLTRB(11, 7, 30, 8),
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
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15, left: 8),
                      child: Text(
                        "Jane Doe",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff78ff78),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: const Center(
                                  child: Text(
                                    '6.0',
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
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 105, top: 0, bottom: 20),
                  child: Text(
                    "Wednesday. December 21, 2022",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "I had a wonderful time at Pinnacle Resorts. Their customer service\nwas on point and the overall user experience was great.",
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
          child: Container(
            padding: const EdgeInsets.fromLTRB(11, 7, 30, 8),
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
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15, left: 8),
                      child: Text(
                        "John Doe",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff78ff78),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: const Center(
                                  child: Text(
                                    '8.9',
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
                              const Text("Excellent"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 105, top: 0, bottom: 20),
                  child: Text(
                    "Wednesday. December 21, 2022",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "I had a wonderful time at Pinnacle Resorts. Their customer service\nwas on point and the overall user experience was great.",
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
          child: Container(
            padding: const EdgeInsets.fromLTRB(11, 7, 30, 8),
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
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15, left: 8),
                      child: Text(
                        "John Doe",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000)),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff78ff78),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: const Center(
                                  child: Text(
                                    '8.9',
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
                              const Text("Excellent"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 105, top: 0, bottom: 20),
                  child: Text(
                    "Wednesday. December 21, 2022",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    "I had a wonderful time at Pinnacle Resorts. Their customer service\nwas on point and the overall user experience was great.",
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
