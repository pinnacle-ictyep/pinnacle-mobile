import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

enum Status {
  registered,
  notRegistered,
  registering,
  notLoggedIn,
  loggedIn,
  notLoading,
  isLoading,
  loaded
}

class GetDataProvider with ChangeNotifier {
  Status _isLoadingData = Status.notLoading;
  Status get isLoading => _isLoadingData;
  Future getData(url, token) async {
    _isLoadingData = Status.loggedIn;
    notifyListeners();
    print(token);
    dynamic response = await get(Uri.parse(url), headers: {
      'content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer 19|oYjBvcDLrF7HxSRVgso0n24vXvSCCQuE1ue9BgaQ'
    });

    _isLoadingData = Status.notLoggedIn;
    notifyListeners();

    return response;
  }

  Future SaveData(
      Map<String, dynamic> blogData, String url, String token) async {
    final response = await post(Uri.parse(url),
        headers: {
          'content-type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: json.encode(blogData));
    return response;
  }
}
