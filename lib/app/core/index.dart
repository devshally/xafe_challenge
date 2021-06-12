import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xafe_challenge/app/core/homescreen.dart';

class Index extends StatefulWidget {
  static const String id = 'index_page';

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    // Categories(),
    // Budget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFF),
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Euclid Circular',
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Euclid Circular',
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[400],
        onTap: _onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.remove_circle_outline_rounded,
            ),
            label: 'Budget',
          ),
        ],
      ),
    );
  }

  void _onTabTapped(int index) {
    if (!mounted) return;
    setState(() {
      currentIndex = index;
    });
  }
}
