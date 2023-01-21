import 'package:flutter/material.dart';
import 'package:stayinn/screens/edit_profile.dart';
import 'package:stayinn/widgets/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome Tumi",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const Padding(padding: EdgeInsets.only(top: 21)),
            CircleAvatar(
              backgroundColor: Colors.greenAccent[400],
              radius: 75,
              child: Image.asset("assets/images/prof pic.png"), //Text
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const EditProfileScreen();
                  },
                ));
              },
              child: Profile(
                  text: "Edit Profile",
                  style: const TextStyle(),
                  image: Image.asset("assets/images/edit.png")),
            ),
            const SizedBox(
              height: 10,
            ),
            Profile(
                text: "Notifications",
                style: const TextStyle(),
                image: Image.asset("assets/images/notification.png")),
            const SizedBox(
              height: 10,
            ),
            Profile(
                text: "Favorite",
                style: const TextStyle(),
                image: Image.asset("assets/images/favourite.png")),
            const SizedBox(
              height: 10,
            ),
            Profile(
                text: "Settings",
                style: const TextStyle(),
                image: Image.asset("assets/images/setting.png")),
            const SizedBox(
              height: 10,
            ),
            Profile(
                text: "Help",
                style: const TextStyle(),
                image: Image.asset("assets/images/help.png")),
            const SizedBox(
              height: 10,
            ),
            Profile(
                text: "Log Out",
                style: const TextStyle(),
                image: Image.asset("assets/images/logout.png")),
          ],
        ),
      ),
    );
  }
}
