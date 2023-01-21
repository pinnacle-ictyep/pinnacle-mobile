import 'package:flutter/material.dart';
import 'package:stayinn/screens/reset_pass_screen.dart';
import 'package:stayinn/widgets/my_textfield.dart';
import 'package:stayinn/widgets/submit_button.dart';

import '../widgets/const_validator.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final emailController = TextEditingController();
  final forgotKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: forgotKey,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 58,
                  ),
                  Image.asset("assets/images/forgetpass1.png"),
                  const SizedBox(height: 56),
                  const Padding(
                    padding: EdgeInsets.only(right: 36),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000)),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Don't Worry It Happens, Please\nEnter Your email.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000)),
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hintText: "Email",
                    obscureText: false,
                    onChanged: (value) {
                      forgotKey.currentState?.validate();
                    },
                    validator: (value) {
                      bool emailchecker = emailValid.hasMatch(value!);

                      if (value.isEmpty) {
                        return "Invalid";
                      } else if (!emailchecker) {
                        return "Enter a Valid email ";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      if (forgotKey.currentState!.validate()) {
                        emailController.clear();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ResetPasswordScreen()));
                      } else {}
                    },
                    child: const SubmitButton(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
