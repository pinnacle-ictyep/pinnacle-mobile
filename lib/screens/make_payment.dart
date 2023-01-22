import 'package:flutter/material.dart';
import 'package:stayinn/screens/confirm_booking.dart';

class MakePayment extends StatefulWidget {
  const MakePayment({super.key});

  @override
  State<MakePayment> createState() => _MakePaymentState();
}

class _MakePaymentState extends State<MakePayment> {
  String? paymentType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 114, 163, 249),
      //   centerTitle: true,
      //   title: const Text("Make Payment"),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const ConfirmBooking();
                        }));
                      },
                      child: const Icon(Icons.arrow_back_ios_sharp)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Text(
                    "Make Payment",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "CHOOSE YOUR PAYMENT METHOD",
              style: TextStyle(
                color: Color.fromARGB(255, 136, 127, 127),
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Container(
                height: 320,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: double.infinity,
                      //padding: const EdgeInsets.fromLTRB(11, 7, 52, 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RadioListTile(
                        secondary: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Image.asset("assets/images/master.png"),
                              Image.asset("assets/images/visa.png"),
                            ],
                          ),
                        ),
                        title: const Text(
                          "Pay with Mastercard and visa",
                          style: TextStyle(fontSize: 15),
                        ),
                        value: "Master",
                        groupValue: paymentType,
                        onChanged: (value) {
                          setState(() {
                            paymentType = value.toString();
                            showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: SizedBox(
                                    height: 300,
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 40),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 40, right: 40),
                                          child: SizedBox(
                                            height: 40,
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.multiline,
                                              decoration: InputDecoration(
                                                label: const Text(
                                                    "Cardholder Name"),
                                                border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.black,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 40, right: 40),
                                          child: SizedBox(
                                            height: 40,
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                label:
                                                    const Text("Card Number"),
                                                border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Colors.black,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40, top: 10),
                                              child: SizedBox(
                                                width: 200,
                                                height: 40,
                                                child: TextFormField(
                                                  keyboardType:
                                                      TextInputType.phone,
                                                  decoration: InputDecoration(
                                                    label: const Text(
                                                        "Expiry Date"),
                                                    border: OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Colors.black,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30, top: 10),
                                              child: SizedBox(
                                                width: 100,
                                                height: 40,
                                                child: TextFormField(
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      const InputDecoration(
                                                    label: Text("CVV"),
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xff00AEFF),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 30),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, "/PaymentSummary");
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(15),
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 60),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF222AF0),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "PAY NOW",
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
                                );
                              },
                            );
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 70,
                      width: double.infinity,
                      //padding: const EdgeInsets.fromLTRB(11, 7, 52, 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RadioListTile(
                        secondary: Image.asset("assets/images/phone.png"),
                        title: const Text(
                          "Pay with USSD",
                          style: TextStyle(fontSize: 15),
                        ),
                        value: "Phone",
                        groupValue: paymentType,
                        onChanged: (value) {
                          setState(() {
                            paymentType = value.toString();
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 70,
                      width: double.infinity,
                      //padding: const EdgeInsets.fromLTRB(11, 7, 52, 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RadioListTile(
                        secondary: Image.asset("assets/images/Bank.png"),
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text(
                          "Pay with Bank Transfer",
                          style: TextStyle(fontSize: 15),
                        ),
                        value: "bank",
                        groupValue: paymentType,
                        onChanged: (value) {
                          setState(() {
                            paymentType = value.toString();
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 70,
                      width: double.infinity,
                      //padding: const EdgeInsets.fromLTRB(11, 7, 52, 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: RadioListTile(
                        secondary: Image.asset("assets/images/verve.png"),
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text(
                          "Pay with Verve Cards",
                          style: TextStyle(fontSize: 15),
                        ),
                        value: "verve",
                        groupValue: paymentType,
                        onChanged: (value) {
                          setState(() {
                            paymentType = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
