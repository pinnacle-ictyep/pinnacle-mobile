import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:stayinn/screens/home_screen.dart';
import 'package:stayinn/screens/make_payment.dart';
import 'package:stayinn/screens/pinnacle_booking.dart';
import 'package:stayinn/screens/your_booking.dart';

import '../models/get_data.dart';
import '../sharedpreference/user_preference.dart';

class ConfirmBooking extends StatefulWidget {
  const ConfirmBooking({super.key, required this.hotelName, required this.hotelAddress, required this.roomType, required this.price, required this.hotel_id, required this.room_id});
  final String hotelName;
  final String hotelAddress;
  final String roomType;
  final String price;
  final int hotel_id;
  final int room_id;

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  DateTime date = DateTime.now();
  DateTime datte = DateTime.now();
 final formKey = GlobalKey<FormState>();

 TextEditingController firsName = new TextEditingController();
 TextEditingController lastName = new TextEditingController();
 TextEditingController phone = new TextEditingController();
 TextEditingController email = new TextEditingController();
 TextEditingController comment = new TextEditingController();

  final String _baseUrl = "https://pinnacle.ictyepprojects.com/api/booking";

  String name = "";
 String phone_ = "";
 String email_ = "";
bool isLoading = false;
 @override
  void initState() {
    


    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const PinnacleHotelBooking(id: '',);
                          }));
                        },
                        child: const Icon(Icons.arrow_back_ios_sharp)),
                    const Text(
                      "Confirm Booking",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomeScreen(selectedindx: 3);
                        }));
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 17,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
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
                       Text(
                        widget.hotelName,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       Text(widget.hotelAddress),
                      const Divider(
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                         const Text("Room type"),
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
                         const Text(
                            "Total",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "₦${widget.price}",
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
                    "Info",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              //    name == null ? 
              //    const Center(child:  CircularProgressIndicator())
                  Container(
                  height: 80,
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(11, 7, 11, 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff00AEFF)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
              //          const SizedBox(
              //             height: 10,
              //           ),
              //           SizedBox(
              //             width: double.infinity,
              //             height: 40,
              //             child: TextFormField(
              //               // initialValue: name.toString(),
              //               keyboardType: TextInputType.name,
              //                validator: (value) {
              //                     if(value!.isEmpty){
              //                       return "Name cannot be empty";
              //                     }
              //                     return null;
              //                   },
              //               controller: lastName,
              //               decoration: InputDecoration(
              //                 label: const Text("Name"),
              //                 border: OutlineInputBorder(
              //                   borderSide: const BorderSide(
              //                     color: Colors.black,
              //                   ),
              //                   borderRadius: BorderRadius.circular(10),
              //                 ),
              //               ),
              //               //    validator: validator,
              //               // onChanged: onChanged,
              //             ),
              //           ),
              //           const SizedBox(
              //             height: 10,
              //           ),
              //           SizedBox(
              //             width: double.infinity,
              //             height: 40,
              //             child: TextFormField(
              //               keyboardType: TextInputType.phone,
              //                validator: (value) {
              //                     if(value!.isEmpty){
              //                       return "Phone cannot be empty";
              //                     }
              //                     return null;
              //                   },
              //               controller: phone,
              //               decoration: InputDecoration(
              //                 label: const Text("Phone Number"),
              //                 border: OutlineInputBorder(
              //                   borderSide: const BorderSide(
              //                     color: Colors.black,
              //                   ),
              //                   borderRadius: BorderRadius.circular(10),
              //                 ),
              //               ),
              //               //    validator: validator,
              //               // onChanged: onChanged,
              //             ),
              //           ),
              //           const SizedBox(
              //             height: 10,
              //           ),
              //           SizedBox(
              //             width: double.infinity,
              //             height: 40,
              //             child: TextFormField(

              //               keyboardType: TextInputType.emailAddress,
              //               controller: email,
              //                validator: (value) {
              //                     if(value!.isEmpty){
              //                       return "Email cannot be empty";
              //                     }
              //                     return null;
              //                   },
              //               decoration: InputDecoration(
              //                 label: const Text("Email Address"),
              //                 border: OutlineInputBorder(
              //                   borderSide: const BorderSide(
              //                     color: Colors.black,
              //                   ),
              //                   borderRadius: BorderRadius.circular(10),
              //                 ),
              //               ),
              //               //    validator: validator,
              //               // onChanged: onChanged,
              //             ),
              //           ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: TextFormField(
                             controller: comment,
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
                ),
                const SizedBox(height: 30),
               isLoading ?
               const Center(child:  CircularProgressIndicator())
               : GestureDetector(
                  onTap: () {
                    //  if(formKey.currentState!.validate()){

                    //  }
                     UserPreference().getUser().then((value) {
      setState(() {
       
      //  name = value.name;
      //   phone_ = value.phone;
      //    email_ = value.email;
          isLoading = true;
      });

         final Map<String, dynamic> data = {
      "hotel_name": widget.hotelName,
      "hotel_location": widget.hotelAddress,
      "roomtype": widget.roomType,
      "hotel_id": widget.hotel_id,
      "roomtype_id": widget.room_id,
      "total": widget.price,
      "user_id": value.id,
      "check_in": date.toString(),
      "check_out": datte.toString(),
      "name": value.name,
      "email": value.email,
      "phone": value.phone,
      "comment": comment.text
    };


          GetDataProvider().saveData(data, _baseUrl, value.token).then((response){

              var  responseData = json.decode(response.body);
              print(responseData);
             if (response.statusCode == 200) {
                
        Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MakePayment(hotelName: widget.hotelName, hotelAddress: widget.hotelAddress, roomType: widget.roomType, 
                          price: widget.price, hotel_id: widget.hotel_id, room_id: widget.room_id, 
                          check_in: date.toString(), check_out: datte.toString(), name: value.name, email: value.email, 
                          phone: value.phone, comment: comment.text);
                        },
                      ),
                    );
             }else{
                var snackbar = SnackBar(content: Text(responseData['errors'].toString()));

                ScaffoldMessenger.of(context).showSnackBar(snackbar);
             }

             setState(() {
       
          isLoading = false;
      });


          });


      

      
     });
                  
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
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) {
                //           return const YourBooking();
                //         },
                //       ),
                //     );
                //   },
                //   child: Container(
                //     height: 50,
                //     padding: const EdgeInsets.all(15),
                //     margin: const EdgeInsets.symmetric(horizontal: 60),
                //     decoration: BoxDecoration(
                //       color: Colors.blueAccent,
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     child: const Center(
                //       child: Text(
                //         "RESERVE ROOM",
                //         style: TextStyle(
                //           fontSize: 20,
                //           fontWeight: FontWeight.w700,
                //           fontStyle: FontStyle.normal,
                //           color: Color(0xFFFFFFFF),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
