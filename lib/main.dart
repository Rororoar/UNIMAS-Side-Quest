import 'package:flutter/material.dart';
import 'package:test1/src/screens/home.dart'; // Make sure HomePage is imported correctly
import 'package:test1/src/screens/loginscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(primarySwatch: Colors.blue), // Added a basic theme
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false, // Removes the debug banner
    );
  }
}
