import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stayinn/models/user_model.dart';
import 'package:stayinn/services/auth_service.dart';
import 'package:stayinn/widgets/my_textfield.dart';
import 'package:stayinn/widgets/mysignup_button.dart';

import '../services/api_service.dart';
import '../sharedpreference/user_preference.dart';
import '../widgets/const_validator.dart';
import 'home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formfield = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();
  bool passToggle = true;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formfield,
            child: Column(
              children: [
                const SizedBox(height: 50),
                SizedBox(
                    height: 84,
                    width: 161,
                    child: Image.asset("assets/images/stayinn2.png")),
                const Text(
                  "Let's get you started ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF000000),
                  ),
                ),
                const SizedBox(height: 40),
                MyTextField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  hintText: 'Name',
                  obscureText: false,
                  suffixIcon: Image.asset("assets/images/User.png"),
                  onChanged: (value) {
                    _formfield.currentState?.validate();
                  },
                  validator: (value) {
                    if (nameController.text.isEmpty ||
                        nameController.text.length < 3) {
                      return "Required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                MyTextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                  suffixIcon: Image.asset("assets/images/envelop.png"),
                  onChanged: (value) {
                    _formfield.currentState?.validate();
                  },
                  validator: (value) {
                    bool emailchecker = emailValid.hasMatch(value!);
                    //print(emailchecker);
                    if (value.isEmpty) {
                      return "Enter An Email";
                    } else if (!emailchecker) {
                      return "Enter A Valid Email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                MyTextField(
                  keyboardType: TextInputType.number,
                  controller: phoneNumberController,
                  hintText: 'Phone Number',
                  obscureText: false,
                  suffixIcon: const Icon(Icons.phone_android),
                  onChanged: (value) {
                    _formfield.currentState?.validate();
                  },
                  validator: (value) {
                    if (phoneNumberController.text.isEmpty) {
                      return "*Field must not be empty";
                    } else if (phoneNumberController.text.length < 10) {
                      return "Incomplete number";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                MyTextField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: passToggle,
                    onChanged: (value) {
                      _formfield.currentState?.validate();
                    },
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      } else if (passwordController.text.length < 7) {
                        return "Password Not Strong Enough";
                      }
                      return null;
                    }),
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
                const SizedBox(height: 18),
             isLoading ?
             const Center(
              child: CircularProgressIndicator(),
             ) :  InkWell(
                  onTap: () async {
                    setState(() {
                      isLoading= true;
                    });
                    if (_formfield.currentState!.validate()) {
                      Map<String, String> regData = {
                        "email": emailController.text,
                        "password": passwordController.text,
                        "phone": phoneNumberController.text,
                        "name": nameController.text
                      };
                      print(regData);
                       ApiService().postData(
                          "register",
                          regData,
                         )
                          
                          .then((response) {
                            final Map<String, dynamic> responseData = json.decode(response.body);
                            if(response.statusCode == 200){
                              User user = User(
                                email: responseData['data']['email'],
                                id: responseData['data']['id'].toString(),
                                name: responseData['data']['name'],
                                phone: responseData['data']['phone'],
                                token: responseData['token'], confirmPassword: '', password: '', renewalToken: '',
                                );
                                
                                
                              UserPreference().saveUser(user);
                              setState(() {
                      isLoading= false;
                    });
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return  const HomeScreen(selectedindx: 0,);
                                                    },
                                  )
                                                  
                                );
                            } else{
                  setState(() {
                      isLoading= false;
                    });
                                var snackbar = SnackBar(content: Text(responseData['errors'].toString()));

                            ScaffoldMessenger.of(context).showSnackBar(snackbar);

                            }

                            print(response.statusCode);  
                          
                          }
        );
                      // nameController.clear();
                      // emailController.clear();
                      // phoneNumberController.clear();
                      // passwordController.clear();
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const LoginScreen()));
                     
                    } else {}
                  },
                  child: const MySignUpButton(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
