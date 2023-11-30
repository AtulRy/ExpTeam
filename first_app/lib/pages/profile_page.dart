import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF040D12), // Set background color
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container for Profile Picture
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top Left Text
                      Text(
                        'imnikhilmathew',
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),

                      // Profile Picture
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 158, 158, 158),
                        ),
                      ),
                    ],
                  ),
                ),

                // Thick Line with color 93B1A6
                Container(
                  height: 5,
                  color: Color(0xFF93B1A6),
                  margin: EdgeInsets.symmetric(vertical: 16),
                ),

                // Container for Texts
                Container(
                  margin: EdgeInsets.only(left: 16, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name of the User
                      Text(
                        'Nikhil Mathew',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.75),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          '@R22EJ111',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),

                      Text(
                        "It's hard to believe",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        "Member | Event management",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 5,
                  color: Color(0xFF93B1A6),
                  margin: EdgeInsets.symmetric(vertical: 16),
                ),

                // Container for "About me"
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // "About me" Text
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Text(
                          "About me",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 16, top: 8),
                  child: Text(
                    "Hey! 👋 I'm Nikhil.🌟 Constantly curious, forever learning. 📚 Expressing creativity through [Your Creative Outlets]. ☕ Coffee addict, wanderlust-infected adventurer. 🌍 Let's share stories and good vibes! 🌈✨ #AboutMe #LifeAdventures",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
