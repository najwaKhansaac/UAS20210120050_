import 'package:flutter/material.dart';
import 'package:uas050/dashboard.dart';
import 'package:uas050/login.dart';
import 'package:uas050/profile.dart';

class Navigasi extends StatefulWidget {
  const Navigasi({Key? key});

  @override
  State<Navigasi> createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {
  bool _isLoggedIn = false;
  int _currentIndex = 0;
  final List<Widget> _pages = [
    DashboardScreen(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_rounded),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
