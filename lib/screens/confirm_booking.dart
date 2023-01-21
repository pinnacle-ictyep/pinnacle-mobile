import 'package:flutter/material.dart';
import 'package:stayinn/screens/make_payment.dart';
import 'package:stayinn/screens/your_booking.dart';

class ConfirmBooking extends StatefulWidget {
  const ConfirmBooking({super.key});

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  DateTime date = DateTime.now();
  DateTime datte = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 114, 163, 249),
        centerTitle: true,
        title: const Text(
          "Confirm Booking",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              // child:
              //  GestureDetector(
              //   onTap: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return const ProfileWidget();
              //     }));
              //   },
              child: Text(
                "Cancel",
                style: TextStyle(
                  fontSize: 17,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Booking Details",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      decoration: TextDecoration.underline,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Container(
                height: 140,
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
                    const Text(
                      "Pinnacle Resorts",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text("Asaba, Delta"),
                    const Divider(
                      color: Colors.black,
                    ),
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
                          "Total",
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
              const SizedBox(height: 10),
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
                          padding: EdgeInsets.only(right: 80),
                          child: Text(
                            "Check out",
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 50),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${date.year}/${date.month}/${date.day}',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                            onTap: () async {
                              DateTime? newDate = await showDatePicker(
                                context: context,
                                initialDate: date,
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2024),
                                // ).then((date) {
                                //   setState(() {
                                //     _dateTime = date;
                                //   });
                                // });
                              );
                              if (newDate == null) return;
                              setState(() {
                                date = newDate;
                              });
                            },
                            child: const Icon(Icons.arrow_drop_down)),
                        const Padding(
                          padding: EdgeInsets.only(left: 35),
                          child: Icon(Icons.arrow_forward_sharp),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text(
                            '${datte.year}/${datte.month}/${datte.day}',
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: () async {
                              DateTime? newwDate = await showDatePicker(
                                context: context,
                                initialDate: datte,
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2024),
                                // ).then((date) {
                                //   setState(() {
                                //     _dateTime = date;
                                //   });
                                // });
                              );
                              if (newwDate == null) return;
                              setState(() {
                                datte = newwDate;
                              });
                            },
                            child: const Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "To change your schedule, kindly click on the dates above.",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Your Details",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 260,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(11, 7, 11, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff00AEFF)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 150, 147, 147)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Mr.",
                                style: TextStyle(fontSize: 18),
                              ),

                              // Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          width: 260,
                          height: 40,
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            // controller: controller,
                            decoration: InputDecoration(
                              label: const Text("First Name"),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            //    validator: validator,
                            // onChanged: onChanged,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        // controller: controller,
                        decoration: InputDecoration(
                          label: const Text("Last Name"),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        //    validator: validator,
                        // onChanged: onChanged,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        // controller: controller,
                        decoration: InputDecoration(
                          label: const Text("Phone Number"),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        //    validator: validator,
                        // onChanged: onChanged,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        // controller: controller,
                        decoration: InputDecoration(
                          label: const Text("Email Address"),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        //    validator: validator,
                        // onChanged: onChanged,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          label: const Text("Enter Additional Comments"),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const MakePayment();
                      },
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    color: const Color(0xFF222AF0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "PAY NOW",
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
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const YourBooking();
                      },
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "RESERVE ROOM",
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
        ),
      ),
    );
  }
}
