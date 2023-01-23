import 'package:flutter/material.dart';
import 'package:stayinn/screens/home_screen.dart';

class PaymentSummary extends StatefulWidget {
  const PaymentSummary({super.key, required this.hotelName, required this.hotelAddress, required this.roomType, required this.price, required this.hotel_id, required this.room_id, required this.check_in, required this.check_out, required this.name, required this.email, required this.phone, required this.comment});

     final String hotelName;
  final String hotelAddress;
  final String roomType;
  final String price;
  final int hotel_id;
  final int room_id;
  final String check_in;
  final String check_out;
  final String name;
  final String email;
   final String phone;
  final String comment;

  @override
  State<PaymentSummary> createState() => _PaymentSummaryState();
}

class _PaymentSummaryState extends State<PaymentSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 114, 163, 249),
        centerTitle: true,
        title: const Text(
          "Payment Summary",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
            child: Container(
              height: 130,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(11, 7, 60, 8),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                       widget.hotelName,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                       Text(
                       widget.hotelAddress,
                        style:const TextStyle(fontSize: 18),
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
                      const Text("1 Nights  *  1 Adult"),
                      const Text(
                        "Booked Successfully",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
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
                    children:  [
                     const  Text("Room type"),
                      Text(
                        widget.roomType,
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                    const  Text(
                        "You Paid",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "₦ ${widget.price}",
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
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
                children:  [
                 const Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.blueAccent,
                    ),
                  ),
                 const Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    widget.email,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.blueAccent,
                    ),
                  ),
                const  Text(
                    "Phone Number",
                    style:  TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    widget.phone,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/share.png",
                  color: Colors.black,
                ),
                Image.asset("assets/images/barcode.png"),
                Image.asset("assets/images/DownloadSimple.png"),
              ],
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const HomeScreen(selectedindx: 0);
              }));
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
    );
  }
}
