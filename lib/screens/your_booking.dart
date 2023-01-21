import 'package:flutter/material.dart';
import 'package:stayinn/screens/home_screen.dart';

class YourBooking extends StatefulWidget {
  const YourBooking({super.key});

  @override
  State<YourBooking> createState() => _YourBookingState();
}

class _YourBookingState extends State<YourBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 114, 163, 249),
        centerTitle: true,
        title: const Text("Your Booking"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Booking ID",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Image.asset("assets/images/share.png"),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 120,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(11, 7, 52, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff00AEFF)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "3099",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Your Reservation Is Being Processed",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const Text(
                      "Your Booking is Only Available For 12 Hours.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 110,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(11, 7, 52, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff00AEFF)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/pinresort.png",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          const Text(
                            "Pinnacle Resorts",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),

                          const Text(
                            "Asaba, Delta.",
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff78ff78),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: const Center(
                                  child: Text(
                                    '9.5',
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(11, 7, 0, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff00AEFF)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Check in"),
                        Padding(
                          padding: EdgeInsets.only(right: 70),
                          child: Text(
                            "Check out",
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 70),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Dec 21 2022",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down),
                        Padding(
                          padding: EdgeInsets.only(left: 35),
                          child: Icon(Icons.arrow_forward_sharp),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 35),
                          child: Text(
                            "Dec 23 2022",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(11, 7, 52, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff00AEFF)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Room type"),
                        Text(
                          "One Rex Deluxe",
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "You Paid",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "₦ 80, 000.00",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 145,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(11, 7, 52, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff00AEFF)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Tumi Ugo",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "tumi.ugo@ictyepprojects.com",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Text(
                      "Phone Number",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "07030000000",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreen(
                          selectedindx: 0,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    color: const Color(0xFF222AF0),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Text(
                      "BACK TO HOME",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
