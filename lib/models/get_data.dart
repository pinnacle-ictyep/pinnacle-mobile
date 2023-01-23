import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart';


class GetDataProvider with ChangeNotifier{
  

// fetch all data of blog from the server
  Future getData(url, token) async{


     dynamic response = await get(Uri.parse(url),
      headers: {
        'content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer '+ token
      
       },
      );

     

    return response;
  }

  

 
  // this is to get save 
  Future saveData(Map<String, dynamic> blogData, String url, String token) async{

    // final Map<String, dynamic> blogData = {
    //     "title" : title,
    //     "body" : body,
    //     "author" : author
    // }; 

   

    final response = await post(Uri.parse(url),
      headers: {
        'content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization' : 'Bearer $token'
      },
      body: json.encode(blogData)
    );


  return response;

  }

 
}