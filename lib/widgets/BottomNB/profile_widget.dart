import 'package:flutter/material.dart';
import 'package:stayinn/screens/confirm_booking.dart';
import 'package:stayinn/screens/edit_profile.dart';
import 'package:stayinn/widgets/profile_widget.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Welcome Tumi",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15),
        ),
        CircleAvatar(
          backgroundColor: Colors.greenAccent[400],
          radius: 75,
          child: Image.asset("assets/images/prof pic.png"), //Text
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const EditProfileScreen();
                },
              ),
            );
          },
          child: Profile(
              text: "Edit Profile",
              style: const TextStyle(),
              image: Image.asset("assets/images/edit.png")),
        ),
        const SizedBox(
          height: 5,
        ),
        Profile(
            text: "Notifications",
            style: const TextStyle(),
            image: Image.asset("assets/images/notification.png")),
        const SizedBox(
          height: 5,
        ),
        // GestureDetector(
        //   onTap: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) {
        //           return const FavoriteWidget();
        //         },
        //       ),
        //     );
        //   },
        //   child:
        Profile(
            text: "Favorite",
            style: const TextStyle(),
            image: Image.asset("assets/images/favourite.png")),
        // ),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const ConfirmBooking();
                },
              ),
            );
          },
          child: Profile(
              text: "Settings",
              style: const TextStyle(),
              image: Image.asset("assets/images/setting.png")),
        ),
        const SizedBox(
          height: 5,
        ),
        Profile(
            text: "Help",
            style: const TextStyle(),
            image: Image.asset("assets/images/help.png")),
        const SizedBox(
          height: 5,
        ),
        Profile(
            text: "Log Out",
            style: const TextStyle(),
            image: Image.asset("assets/images/logout.png")),
      ],
    );
  }
}
