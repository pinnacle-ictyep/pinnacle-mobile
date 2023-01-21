import 'package:flutter/material.dart';
import 'package:stayinn/screens/home_screen.dart';
import 'package:stayinn/widgets/edit_profile_widget.dart';
import 'package:stayinn/widgets/my_textfield.dart';
import 'package:stayinn/widgets/submit_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var nameController;

  var obscureText;

  var Tumi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Edit Profile"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.greenAccent[400],
              radius: 75,
              child: Image.asset("assets/images/prof pic.png"), //Text
            ),
            EditWidget(
                image: Image.asset("assets/images/edit.png"),
                text: "Username",
                style: const TextStyle()),
            MyTextField(
              controller: nameController,
              hintText: "Tumi",
              obscureText: false,
            ),
            EditWidget(
                image: Image.asset("assets/images/edit.png"),
                text: "Email",
                style: const TextStyle()),
            MyTextField(
                controller: nameController,
                hintText: "tumi@ictyepprojects.com",
                obscureText: false),
            EditWidget(
                image: Image.asset("assets/images/edit.png"),
                text: "Phone Number",
                style: const TextStyle()),
            MyTextField(
                controller: nameController,
                hintText: "07119022200",
                obscureText: false),
            EditWidget(
                image: Image.asset("assets/images/edit.png"),
                text: "Gender",
                style: const TextStyle()),
            MyTextField(
                controller: nameController,
                hintText: "Male",
                obscureText: false),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreen(selectedindx: 3);
                      },
                    ),
                  );
                },
                child: const SubmitButton())
          ],
        ),
      ),
    );
  }
}
