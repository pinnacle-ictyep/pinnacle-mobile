import 'package:flutter/material.dart';
import 'package:stayinn/screens/forgot_password.dart';
import 'package:stayinn/screens/home_screen.dart';
import 'package:stayinn/screens/registration_screen.dart';
import 'package:stayinn/widgets/const_validator.dart';
import 'package:stayinn/widgets/my_textfield.dart';
import 'package:stayinn/widgets/mylogin_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool passToggle = true;

  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  SizedBox(
                      height: 84,
                      width: 161,
                      child: Image.asset("assets/images/stayinn2.png")),
                  const Text(
                    "Welcome !",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF000000),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                    onChanged: (value) {
                      formKey.currentState?.validate();
                    },
                    suffixIcon: Image.asset("assets/images/envelop.png"),
                    validator: (value) {
                      bool emailchecker = emailValid.hasMatch(value!);

                      if (value.isEmpty) {
                        return "Enter An Email";
                      } else if (!emailchecker) {
                        return "Enter A Valid Email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 35),
                  MyTextField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: passToggle,
                      onChanged: (value) {
                        formKey.currentState?.validate();
                      },
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else if (passwordController.text.length < 7) {
                          return "Password Not Strong Enough";
                        }
                        return null;
                      }),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: check,
                        onChanged: (bool? newValue) {
                          setState(() {
                            check = true;
                          });
                        },
                      ),
                      const Text(
                        "Remember   ",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            color: Color(0xFF000000)),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ForgotPasswordScreen();
                              }));
                            },
                            child: const Text(
                              "  Forgot Password?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Or",
                            style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 163, 163, 174)),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/facebook.png"),
                      const SizedBox(width: 65),
                      Image.asset("assets/images/apple.png"),
                      const SizedBox(width: 65),
                      Image.asset("assets/images/google.png"),
                    ],
                  ),
                  const SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        // print("Accepted");
                        emailController.clear();
                        passwordController.clear();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return const HomeScreen(selectedindx: 0);
                        }));
                      }
                    },
                    child: const MyLoginButton(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an Account?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const RegistrationScreen();
                              }),
                            );
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
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
