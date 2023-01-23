import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';

class UserPreference {
  Future<bool> saveUser(User user) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();

    pref.setString("id", user.id);
    pref.setString("name", user.name);
    pref.setString("email", user.email);
    pref.setString("phone", user.phone);
    // pref.setString("renewalToken", "");
    pref.setString("token", user.token);

    return true;
  }

  Future<User> getUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String id = prefs.getString("id").toString();
     String name = prefs.getString("name").toString();
    String email = prefs.getString("email").toString();
    String phone = prefs.getString("phone").toString();
    String token = prefs.getString("token").toString();
    // String renewalToken = prefs.getString("renewalToken").toString();

    return User(
        id: id,
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

    preferences.remove("id");
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
