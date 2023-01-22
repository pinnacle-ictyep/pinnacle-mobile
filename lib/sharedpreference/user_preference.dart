import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';

class UserPreference {
  Future<bool> saveUser(var user) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString("name", user['data']['name']);
    pref.setString("email", user['data']['email']);
    pref.setString("phone", user['data']['phone']);
    // pref.setString("renewalToken", "");
    pref.setString("token", user['token']);

    return true;
  }

  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = prefs.getString("name").toString();
    String email = prefs.getString("email").toString();
    String phone = prefs.getString("phone").toString();
    String token = prefs.getString("token").toString();
    // String renewalToken = prefs.getString("renewalToken").toString();

    return User(
        name: name,
        email: email,
        phone: phone,
        password: "",
        confirmPassword: "",
        token: token,
        renewalToken: "");
  }

  void removeUser() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    preferences.remove("name");
    preferences.remove("email");
    preferences.remove("phone");
    preferences.remove("renewalToken");
    preferences.remove("token");
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("token").toString();

    return token;
  }
}
