import 'package:flutter/material.dart';

class BookingNotAvailable extends StatefulWidget {
  const BookingNotAvailable({super.key});

  @override
  State<BookingNotAvailable> createState() => _BookingNotAvailableState();
}

class _BookingNotAvailableState extends State<BookingNotAvailable> {
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
                        image: AssetImage("assets/images/nikkend.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 12),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xffFFFFFF),
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            "Nikki Handsome Villa",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
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
                      child: Container(
                        width: 70,
                        height: 20,
                        decoration: BoxDecoration(
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
                              const Text(
                                "Features",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        width: 70,
                        height: 20,
                        decoration: BoxDecoration(
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
                              const Text(
                                "Gallery",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        width: 70,
                        height: 20,
                        decoration: BoxDecoration(
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
                              const Text(
                                "Rooms",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        width: 70,
                        height: 20,
                        decoration: BoxDecoration(
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
                              const Text(
                                "Location",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Container(
                        width: 70,
                        height: 20,
                        decoration: BoxDecoration(
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
                              const Text(
                                "Review",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 120),
                      child: Text(
                        "Nikki Handsome Villa",
                        style: TextStyle(
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
                        const Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Okpanam Road",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 140),
                      child: Text(
                        "₦17,000/ Night",
                        style: TextStyle(
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
                          child: const Text(
                            'Pinnacle Suites is a new spectacular, luxurious and a safe house of peace and tranquility with varied hospitality services and quintessential space for various occasions,',
                            style: TextStyle(
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
                      child: const Text(
                        'Pinnacle Suites is a new spectacular, luxurious and a safe house of peace and tranquility with varied hospitality.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(47, 0, 55, 0),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xffC4C4C4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'NOT AVAILABLE',
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
