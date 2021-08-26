import 'package:auth_app/main.dart';
import 'package:auth_app/screens/DashBoard.dart';
import 'package:auth_app/screens/ListHelpers.dart';
import 'package:auth_app/screens/Settings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  ontap(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List pages = [
    SummaryScreen(),
    ListHelpers(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEBD4B2),
        foregroundColor: color,
        iconTheme: IconThemeData(color: color),
        title: Text(
          "Helpert",
          style: TextStyle(color: color, fontSize: 20),
        ),
      ),
      body: pages[_currentIndex],
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: ontap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
    );
  }
}
