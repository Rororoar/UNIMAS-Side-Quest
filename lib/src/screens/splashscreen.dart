import 'package:flutter/material.dart';

void main() {
  runApp(const UnimasSideQuestApp());
}

class UnimasSideQuestApp extends StatelessWidget {
  const UnimasSideQuestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, // White background
        body: Center(
          child: Text(
            'Unimas Side Quest',
            style: TextStyle(
              fontSize: 32, // Adjust the font size
              fontWeight: FontWeight.bold, // Bold text
              color: Color(0xFFE91E63), // Hex color #E91E63
            ),
          ),
        ),
      ),
    );
  }
}
