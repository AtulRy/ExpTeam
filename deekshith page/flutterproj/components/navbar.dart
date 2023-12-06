import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: sampage(),
    );
  }
}
class sampage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040D12),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dev/Hub',
                style: TextStyle(
                  fontSize: 64,
                  color: Color(0xFF93B1A4),
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF040D12),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: "Schedule"),
          BottomNavigationBarItem(icon: Icon(Icons.inbox),label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.folder),label: "Projects"),


        ],),

    );
  }
}