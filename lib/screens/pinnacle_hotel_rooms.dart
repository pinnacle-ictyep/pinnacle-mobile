import 'package:flutter/material.dart';

class PinnacleHotelRooms extends StatefulWidget {
  const PinnacleHotelRooms({super.key});

  @override
  State<PinnacleHotelRooms> createState() => _PinnacleHotelRoomsState();
}

class _PinnacleHotelRoomsState extends State<PinnacleHotelRooms> {
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
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 70),
              child: Text(
                "Total:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 140),
              child: Text(
                "₦ 40, 000.00",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 5),
          child: Row(
            children: [
              Image.asset("assets/images/ministandard.png"),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Mini Standard",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        "₦20000",
                        style: TextStyle(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Container(
                              width: 90.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 10, top: 3.5),
                                child: Text(
                                  "Select Room",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Stack(children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      subMiniCounter();
                                    },
                                    child: Container(
                                      height: 37,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(right: 18),
                                        child: Icon(Icons.remove_outlined,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                      width: 25,
                                      child: Text(
                                        "$miniCounter",
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      addMiniCounter();
                                    },
                                    child: Container(
                                      height: 37,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(right: 30),
                                        child: Icon(Icons.add,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18, top: 10, left: 40),
          child: Row(
            children: [
              Image.asset("assets/images/standard.png"),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        "Standard",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        "₦35,000.00",
                        style: TextStyle(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Container(
                              width: 90.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 10, top: 3.5),
                                child: Text(
                                  "Select Room",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Stack(children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      subStandardCounter();
                                    },
                                    child: Container(
                                      height: 37,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(right: 18),
                                        child: Icon(Icons.remove_outlined,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                      width: 25,
                                      child: Text(
                                        "$standardCounter",
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      addStandardCounter();
                                    },
                                    child: Container(
                                      height: 37,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(right: 18),
                                        child: Icon(Icons.add,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 18, top: 10, left: 40),
          child: Row(
            children: [
              Image.asset("assets/images/rexdeluxe.png"),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        "Rex Deluxe",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        "₦40,000.00",
                        style: TextStyle(
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
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Container(
                              width: 90.0,
                              height: 25.0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 10, top: 3.5),
                                child: Text(
                                  "Select Room",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Stack(children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      subRexCounter();
                                    },
                                    child: Container(
                                      height: 37,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(right: 18),
                                        child: Icon(Icons.remove_outlined,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                      width: 25,
                                      child: Text(
                                        "$rexCounter",
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      addRexCounter();
                                    },
                                    child: Container(
                                      height: 37,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(right: 18),
                                        child: Icon(Icons.add,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
