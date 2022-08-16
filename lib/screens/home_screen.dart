import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:plants_system/screens/notifications_screen.dart';
import 'package:plants_system/screens/plants_HomeScreen/plants_screen.dart';
import 'package:plants_system/screens/profile_screen.dart';
import 'package:plants_system/screens/scanner_screen.dart';
import 'package:plants_system/screens/unknown_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;

  static List<Widget> _pages = [
    UnknownScreen(),
    ScannerScreen(),
    PlantScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          TabItem(icon: Icons.grass),
          TabItem(icon: Icons.qr_code_scanner),
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.notifications),
          TabItem(icon: Icons.account_circle),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: (int i) {
          setState(() {
            _selectedIndex = i;
          });
        },
      ),
      body: _pages.elementAt(_selectedIndex),
    );
  }
}
