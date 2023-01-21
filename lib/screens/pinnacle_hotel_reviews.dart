import 'package:flutter/material.dart';

class PinnacleHotelReviews extends StatefulWidget {
  const PinnacleHotelReviews({super.key});

  @override
  State<PinnacleHotelReviews> createState() => _PinnacleHotelReviewsState();
}

class _PinnacleHotelReviewsState extends State<PinnacleHotelReviews> {
  @override
  Widget build(BuildContext context) {
    return
        // child: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Stack(
        //         children: [
        //           Container(
        //             padding: const EdgeInsets.fromLTRB(11, 0, 16, 0),
        //             width: double.infinity,
        //             height: 235,
        //             decoration: const BoxDecoration(
        //               color: Color(0xffd9d9d9),
        //               image: DecorationImage(
        //                 image: AssetImage("assets/images/pinnaclepic.png"),
        //                 fit: BoxFit.cover,
        //               ),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.only(left: 16, top: 12),
        //             child: Row(
        //               children: const [
        //                 Icon(
        //                   Icons.arrow_back_ios,
        //                   color: Color(0xffFFFFFF),
        //                   size: 30,
        //                 ),
        //                 Padding(
        //                   padding: EdgeInsets.only(left: 8),
        //                   child: Text(
        //                     "Pinnacle Resorts",
        //                     style: TextStyle(
        //                         fontSize: 24,
        //                         color: Colors.white,
        //                         fontWeight: FontWeight.w700),
        //                   ),
        //                 ),
        //                 Padding(
        //                   padding: EdgeInsets.only(left: 65, top: 5),
        //                   child: Icon(
        //                     Icons.favorite_outline,
        //                     size: 25,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ],
        //       ),
        //       SingleChildScrollView(
        //         scrollDirection: Axis.horizontal,
        //         child: Row(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(left: 10, top: 10),
        //               child: Container(
        //                 width: 70,
        //                 height: 20,
        //                 decoration: BoxDecoration(
        //                     border: Border.all(
        //                       color: Colors.blue,
        //                     ),
        //                     borderRadius: BorderRadius.circular(10)),
        //                 child: Padding(
        //                   padding: const EdgeInsets.only(left: 5),
        //                   child: Row(
        //                     children: [
        //                       Image.asset(
        //                         "assets/images/feature.png",
        //                         width: 11.56,
        //                         height: 11.56,
        //                       ),
        //                       const Text(
        //                         "Features",
        //                         style: TextStyle(
        //                             fontSize: 12, fontWeight: FontWeight.w700),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(left: 10, top: 10),
        //               child: Container(
        //                 width: 70,
        //                 height: 20,
        //                 decoration: BoxDecoration(
        //                     border: Border.all(
        //                       color: Colors.blue,
        //                     ),
        //                     borderRadius: BorderRadius.circular(10)),
        //                 child: Padding(
        //                   padding: const EdgeInsets.only(left: 5),
        //                   child: Row(
        //                     children: [
        //                       Image.asset(
        //                         "assets/images/gallery.png",
        //                         width: 11.56,
        //                         height: 11.56,
        //                       ),
        //                       const Text(
        //                         "Gallery",
        //                         style: TextStyle(
        //                             fontSize: 12, fontWeight: FontWeight.w700),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(left: 10, top: 10),
        //               child: Container(
        //                 width: 70,
        //                 height: 20,
        //                 decoration: BoxDecoration(
        //                     border: Border.all(
        //                       color: Colors.blue,
        //                     ),
        //                     borderRadius: BorderRadius.circular(10)),
        //                 child: Padding(
        //                   padding: const EdgeInsets.only(left: 5),
        //                   child: Row(
        //                     children: [
        //                       Image.asset(
        //                         "assets/images/rooms.png",
        //                         width: 11.56,
        //                         height: 11.56,
        //                       ),
        //                       const Text(
        //                         "Rooms",
        //                         style: TextStyle(
        //                             fontSize: 12, fontWeight: FontWeight.w700),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(left: 10, top: 10),
        //               child: Container(
        //                 width: 70,
        //                 height: 20,
        //                 decoration: BoxDecoration(
        //                     border: Border.all(
        //                       color: Colors.blue,
        //                     ),
        //                     borderRadius: BorderRadius.circular(10)),
        //                 child: Padding(
        //                   padding: const EdgeInsets.only(left: 5),
        //                   child: Row(
        //                     children: [
        //                       Image.asset(
        //                         "assets/images/location.png",
        //                         width: 11.56,
        //                         height: 11.56,
        //                       ),
        //                       const Text(
        //                         "Location",
        //                         style: TextStyle(
        //                             fontSize: 12, fontWeight: FontWeight.w700),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(left: 10, top: 10),
        //               child: Container(
        //                 width: 70,
        //                 height: 20,
        //                 decoration: BoxDecoration(
        //                     border: Border.all(
        //                       color: Colors.blue,
        //                     ),
        //                     borderRadius: BorderRadius.circular(10)),
        //                 child: Padding(
        //                   padding: const EdgeInsets.only(left: 5),
        //                   child: Row(
        //                     children: [
        //                       Image.asset(
        //                         "assets/images/review.png",
        //                         width: 11.56,
        //                         height: 11.56,
        //                       ),
        //                       const Text(
        //                         "Review",
        //                         style: TextStyle(
        //                             fontSize: 12, fontWeight: FontWeight.w700),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
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
