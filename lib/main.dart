// lib/main.dart
import 'package:flutter/material.dart';
import 'package:ostello/screen/live_classes.dart';
// Import your screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins', // Or your design font
      ),
      home: CourseScreen(), // Your main screen now
    );
  }
}
