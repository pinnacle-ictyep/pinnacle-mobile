import 'package:flutter/material.dart';
import 'package:stayinn/screens/login_screen.dart';
import 'package:stayinn/widgets/my_textfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final resetKey = GlobalKey<FormState>();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: resetKey,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 64),
                  Image.asset("assets/images/forgetpass2.png"),
                  const SizedBox(height: 34),
                  const Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const SizedBox(height: 35),
                  MyTextField(
                    controller: newPasswordController,
                    hintText: 'New Password',
                    obscureText: passToggle,
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    onChanged: (value) {
                      resetKey.currentState?.validate();
                    },
                    validator: (value) {
                      if (newPasswordController.text.isEmpty) {
                        return "*Required";
                      } else if (newPasswordController.text.length < 5) {
                        return "*Password not strong enough";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 25),
                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: passToggle,
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    onChanged: (value) {
                      resetKey.currentState?.validate();
                    },
                    validator: (value) {
                      if (value != newPasswordController.text) {
                        return "*Password does not match";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      if (resetKey.currentState!.validate()) {
                        newPasswordController.clear();
                        confirmPasswordController.clear();

                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      } else {}
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(horizontal: 45),
                      decoration: BoxDecoration(
                        color: const Color(0xFF222AF0),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          "Reset",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ),
                    ),
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
