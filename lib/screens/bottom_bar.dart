import 'package:flutter/material.dart';
import 'package:stayinn/screens/booking_screen.dart';
import 'package:stayinn/screens/favorite_screen.dart';
import 'package:stayinn/screens/home_screen.dart';
import 'package:stayinn/screens/profile_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOption = <Widget>[
    const HomeScreen(
      selectedindx: 0,
    ),
    const BookingScreen(),
    const FavoriteScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          selectedItemColor: const Color(0xff00AEFF),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xff526480),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_outlined),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ]),
    );
  }
}
