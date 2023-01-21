import 'package:flutter/material.dart';

class PinnacleBookingGallery extends StatefulWidget {
  const PinnacleBookingGallery({super.key});

  @override
  State<PinnacleBookingGallery> createState() => _PinnacleBookingGalleryState();
}

class _PinnacleBookingGalleryState extends State<PinnacleBookingGallery> {
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
        // const SizedBox(
        //   height: 10,
        // ),

        Column(
      children: [
        Container(
          height: 20,
          width: double.infinity,
          color: const Color(0xffD9D9D9),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Image.asset("assets/images/gal1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Image.asset("assets/images/gal2.png"),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Image.asset("assets/images/gal3.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Image.asset("assets/images/gal4.png"),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Image.asset("assets/images/gal5.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Image.asset("assets/images/gal6.png"),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
