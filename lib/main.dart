import 'package:flutter/material.dart';
import 'package:plants_system/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[800]
      ),
      home: HomeScreen(),
    );
  }
}
