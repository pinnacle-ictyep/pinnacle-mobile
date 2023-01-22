import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  static const String _baseUrl = "https://pinnacle.ictyepprojects.com/api/";
  final Map<String, String> _setHeaders = {'Accept': 'application/json'};

  // unauthenticated post request
  Future postData(String endPoint, data) async {
    return await http.post(
      Uri.parse(_baseUrl + endPoint),
      body: data,
      headers: _setHeaders,
    );
  }

  userToken() async {
    final storage = await SharedPreferences.getInstance();
    var authToken = storage.getString("auth_token");
    return authToken;
  }
}
