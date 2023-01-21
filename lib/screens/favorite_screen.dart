import 'package:flutter/material.dart';
import 'package:stayinn/widgets/amaka.dart';
import 'package:stayinn/widgets/merridien.dart';
import 'package:stayinn/widgets/pinnacle.dart';
import 'package:stayinn/widgets/rex.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 21, right: 22, top: 10),
                child: Pinnacle(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21, right: 22, top: 10),
                // child: Nikki(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21, right: 22, top: 10),
                child: Amaka(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21, right: 22, top: 10),
                child: Merridien(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21, right: 22, top: 10),
                child: Rex(),
              ),
              BottomAppBar()
            ],
          ),
        ),
      ),
    );
  }
}
