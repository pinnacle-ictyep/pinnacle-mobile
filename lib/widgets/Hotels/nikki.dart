import 'package:flutter/material.dart';

class Nikki extends StatelessWidget {
  const Nikki({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 8, 14),
      padding: const EdgeInsets.fromLTRB(8, 7, 24, 8),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff00AEFF)),
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 18, 0),
            width: 110,
            height: 95,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/sp2.png"),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
            width: 155,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nikki Handsome Villa',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      height: 2,
                      color: Color(0xff000000),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 3),
                    child: const Text(
                      'Asaba, Delta.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 2,
                        color: Color(0x7f000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    width: double.infinity,
                    height: 15,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                          width: 20,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xff78ff78),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: const Center(
                            child: Text(
                              '7.0',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                height: 2,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                          child: const Text(
                            'Good',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              height: 2,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
