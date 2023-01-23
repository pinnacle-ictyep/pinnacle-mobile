import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:stayinn/screens/home_screen.dart';
import 'package:stayinn/screens/pinnacle_booking.dart';
import 'package:stayinn/services/auth_service.dart';
import 'package:stayinn/widgets/search_amaka.dart';
import 'package:stayinn/widgets/search_kelvino.dart';
import 'package:stayinn/widgets/search_merridien.dart';
import 'package:stayinn/widgets/search_rex.dart';

import '../services/api_service.dart';
import '../services/provider.dart';
import '../widgets/custom_text.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {

  bool loading = true;

   List<dynamic> _allUsers = [
  ];

  // This list holds the data for the list view
  List<dynamic> _foundUsers = [];

  final String _baseUrl = "https://pinnacle.ictyepprojects.com/api/hotel";

  final String Url = "https://pinnacle.ictyepprojects.com/storage/";

  @override
  void initState() {
    ApiService().userToken().then((token) {
      GetDataProvider().getData(_baseUrl, "Bearer $token").then((response) {
        final Map<String, dynamic> responseDate = json.decode(response.body);
        if (response.statusCode == 200) {
          // print(responseDate['hotels']);
         
          setState(() {
             _allUsers = responseDate['hotels'];
              _foundUsers = _allUsers;
              loading = false;
            });
        }
        // print(value);
      });
    });
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<dynamic> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomeScreen(selectedindx: 0);
                          }));
                        },
                        child: const Icon(Icons.arrow_back_ios_sharp)),
                  ),
               Container(
                width: MediaQuery.of(context).size.width/1.2,
                height: 60,
                 child: TextField(
                  onChanged: (value) => _runFilter(value),
                  style: textStyle1(FontWeight.normal, Colors.black, 16),
                  decoration:  InputDecoration(
                    enabledBorder:   OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(25.0),
                    borderSide: const  BorderSide(color: Colors.black ),

                  ),
                  focusedBorder:  OutlineInputBorder(
                    borderRadius:  BorderRadius.circular(25.0),
                    borderSide:  const BorderSide(color: Colors.black ),

                  ),
                    border: const OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(25))
                    ),
                   labelStyle: textStyle1(FontWeight.normal, Colors.white, 16),
                      labelText: 'Search', suffixIcon: const Icon(Icons.search, color: Colors.black,)),
              ),
               ),
              const SizedBox(
                height: 20,
              ),
                ],
              ),
              const SizedBox(height: 20),

              const SizedBox(
                height: 1,
              ),
              loading == true ? 
             const Center(
              child: CircularProgressIndicator(
                color: Colors.redAccent,
              ),
             )
             :
              Container(
                height: 600,
               
                child: _foundUsers.isNotEmpty
                    ? 
                    ListView.builder(
                        itemCount: _foundUsers.length,
                        itemBuilder: (context, index) {
                          print(_foundUsers[index]["name"]);
                           return GestureDetector(
                            onTap: () {
                                Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return  PinnacleHotelBooking(id: _foundUsers[index]["id"].toString());
                      }));
                            },
                             child: Container(
                                 padding: const EdgeInsets.fromLTRB(40, 20, 53, 8),
                                 child: Row(
                                   children: [
                                     Row(
                                       children: [
                                        AuthService().checkIfImage(_foundUsers[index]["image"]) ?
                                        
                                         Image.network(
                                           Url + _foundUsers[index]["image"],
                                            cacheHeight: 80,
                                                cacheWidth: 120,
                                           scale: 0.8,
                                         ) : 
                                         Container(
                                          width: 150,
                                          height: 100,
                                          color: Colors.red,
                                         ),
                                       ],
                                     ),
                                     Column(
                                       children: [
                                         const SizedBox(
                                           width: 10,
                                         ),
                                          Padding(
                                             padding: const EdgeInsets.only(left: 25, bottom: 0),
                                             child: CustomText(
                                                 text: _foundUsers[index]["name"],
                                                 style: const TextStyle(
                                                     fontSize: 16, fontWeight: FontWeight.w400))
                                                     ),
                                         Padding(
                                           padding: const EdgeInsets.only(
                                               left: 5, right: 18, top: 0, bottom: 5),
                                           child: Row(
                                             children: [
                                            Image.asset("assets/images/location.png"),
                                               const SizedBox(
                                                 width: 10,
                                               ),
                                                Text(
                                                 _foundUsers[index]["address"],
                                                 style:
                                                     const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                                               ),
                                             ],
                                           ),
                                         ),
                                          Center(
                                           child: Text(
                                             ' ₦ ' + _foundUsers[index]["price"],
                                             style: const TextStyle(
                                               fontSize: 15,
                                               fontWeight: FontWeight.w600,
                                               height: 2,
                                               color: Color(0xff000000),
                                             ),
                                           ),
                                         ),
                                         const SizedBox(
                                           width: 10,
                                         ),
                                         Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Padding(
                                             padding: const EdgeInsets.only(right: 50),
                                             child: Row(
                                               children: const [
                                                 Icon(
                                                   Icons.star,
                                                   color: Color(0xffFFD700),
                                                 ),
                                                 Icon(
                                                   Icons.star,
                                                   color: Color(0xffFFD700),
                                                 ),
                                                 Icon(
                                                   Icons.star,
                                                   color: Color(0xffFFD700),
                                                 ),
                                                 Icon(
                                                   Icons.star,
                                                   color: Color(0xffFFD700),
                                                 ),
                                               ],
                                             ),
                                           ),
                                         )
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                           );

                        }


                  )
                      : textInfo('No results found', FontWeight.bold, Colors.white, 20, "")
                
                      ),
              
              
              // SizedBox(height: 1),
              // Nikki(),
              // const SizedBox(height: 1),
              // const SearchAmaka(),
              // const SizedBox(height: 1),
              // const SearchMerridien(),
              // const SizedBox(height: 1),
              // const SearchRex(),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle textStyle1(
  FontWeight fontWeight,
  Color? color,
  double fontsize,
  // String fontFamily,
){
  return const  TextStyle(fontSize: 15, fontWeight: FontWeight.w600);
}

Text textInfo(
  String text,
  FontWeight fontWeight,
  Color? color,
  double fontsize,
  String fontFamily,
) {
  return Text(
    text,
    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
  );
}
}
