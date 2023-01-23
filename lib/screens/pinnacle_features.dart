import 'package:flutter/material.dart';

class PinnacleFeatures extends StatefulWidget {
  const PinnacleFeatures({super.key,  this.hotelsFeatures});

  final dynamic hotelsFeatures;
  
  @override
  State<PinnacleFeatures> createState() => _PinnacleFeaturesState();
}

class _PinnacleFeaturesState extends State<PinnacleFeatures> {
  @override
  Widget build(BuildContext context) {
   print(widget.hotelsFeatures);
    return Column(
      children: [
         Padding(
          padding: const EdgeInsets.only(right: 120),
          child: Text(
            widget.hotelsFeatures["name"],
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
                widget.hotelsFeatures["address"],
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
            widget.hotelsFeatures["price"] + "/Night",
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
                       widget.hotelsFeatures["description"],
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
                   widget.hotelsFeatures["rules"],
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
}
