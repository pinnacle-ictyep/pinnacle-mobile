import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stayinn/models/user_model.dart';
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
        var responseData = jsonDecode(response.body);

          User user = User(
                                email: responseData['data']['email'],
                                id: responseData['data']['id'].toString(),
                                name: responseData['data']['name'],
                                phone: responseData['data']['phone'],
                                token: responseData['token'], confirmPassword: '', password: '', renewalToken: '',
                                );
        UserPreference().saveUser(user);
        // StorageService().authToken(body['token']);
        // print(body);
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
      return await ApiService().postData("register", regData);
      // print(response.statusCode);
      // if (response.statusCode == 200) {
       
       
      // } else {
      //   var body = jsonDecode(response.body);
      //   // print(body);
      // }
    } on SocketException {
      //
    }
  }

  bool checkIfImage(String param) {
print(param.split('.'));
if(param.split('.').length == 1){
  return false;
}if (param.split('.')[1] == 'jpg' || param.split('.')[1] == 'png' || param.split('.')[1] == 'gif') {
      return true;
}else{
 return false;
}
   
  }
}
