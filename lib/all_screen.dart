import 'package:flutter/material.dart';
import 'package:urban_company/help.dart';
import 'package:urban_company/home_screen.dart';
import 'package:urban_company/my_bookins.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({super.key});

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List screens = [
    const HomeScreen(),
    const MyBookingsScreen(),
    const HelpScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: "My Bookigs"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.help,
              ),
              label: "Help"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      body: screens[_selectedIndex],
    );
  }
}
