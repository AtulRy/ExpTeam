import 'dart:ui';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


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
      bottomNavigationBar: Container(
        color: Color(0xFF040D12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(backgroundColor: Color(0xFF040D12),
              color: Color(0xFF93B1A4).withOpacity(0.5),
              activeColor: Colors.white,
              tabBackgroundColor: Color(0xFF93B1A4).withOpacity(0.5),
              padding: EdgeInsets.all(16),
              gap:6,tabs: const [
            GButton(icon: Icons.home, text: "Home",),
            GButton(icon: Icons.folder, text: "Projects",),
            GButton(icon: Icons.calendar_today, text: "Schedule",),
            GButton(icon: Icons.inbox, text: "Inbox",),
          ]),
        ),
      )

    );
  }
}