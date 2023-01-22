import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stayinn/screens/home_screen.dart';
import 'package:stayinn/screens/login_screen.dart';
import 'package:stayinn/services/api_service.dart';

import '../sharedpreference/user_preference.dart';

class AuthService {
  // subrutine to attempt login
  Future login(String email, String password, context) async {
    Map<String, String> data = {"email": email, "password": password};
    // print(data);

    try {
      var response = await ApiService().postData("login", data);
      print(response);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        UserPreference().saveUser(body);
        // StorageService().authToken(body['token']);
        print(body);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen(selectedindx: 0);
            },
          ),
        );
      } else {
        var body = jsonDecode(response.body);
        print(body);
        // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //   content: Text('Yay! A SnackBar!'),
        //   // action: SnackBarAction(
        //   //   label: 'Undo',
        //   //   onPressed: () {
        //   //     // Some code to undo the change.
        //   //   },
        //   // ),
        // ),
        // );
        // print(body);
      }
    } on SocketException {
      //
    }
  }

  // subrutine to register new user
  Future register(
      String email, String password, String phone, String name, context) async {
    //
    Map<String, String> regData = {
      "email": email,
      "password": password,
      "phone": phone,
      "name": name
    };
    try {
      var response = await ApiService().postData("register", regData);
      print(response);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        UserPreference().saveUser(body);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LoginScreen();
            },
          ),
        );
      } else {
        var body = jsonDecode(response.body);
        // print(body);
      }
    } on SocketException {
      //
    }
  }
}
