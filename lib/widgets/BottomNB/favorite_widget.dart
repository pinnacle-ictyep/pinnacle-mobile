import 'package:flutter/material.dart';
import 'package:stayinn/screens/pinnacle_booking.dart';
import 'package:stayinn/widgets/Hotels/nikki.dart';

import 'package:stayinn/widgets/amaka.dart';
import 'package:stayinn/widgets/merridien.dart';
import 'package:stayinn/widgets/pinnacle.dart';
import 'package:stayinn/widgets/rex.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 10),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PinnacleHotelBooking(id: "3",);
                      },
                    ),
                  );
                },
                child: const Pinnacle()),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 15, top: 2, bottom: 10),
            child: Nikki(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 15, top: 2, bottom: 10),
            child: Amaka(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 10),
            child: Merridien(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 10),
            child: Rex(),
          ),
        ],
      ),
    );
  }
}
