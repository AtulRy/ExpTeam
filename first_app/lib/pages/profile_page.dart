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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side with Profile Picture and imnikhilmathew
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Left Text
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'imnikhilmathew',
                      style: TextStyle(
                          fontSize: 23, color: Colors.white), // Set text color
                    ),
                  ),

                  // Profile Picture
                  Container(
                    margin: EdgeInsets.all(16),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 158, 158,
                          158), // You can change the color or add an image
                    ),
                  ),
                ],
              ),

              // Right side with other content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name of the User
                    Container(
                      margin: EdgeInsets.only(
                          top: 24), // Adjusted margin to move the text down
                      child: Text(
                        'Nikhil Mathew',
                        style: TextStyle(
                            fontSize: 16,
                            color:
                                Colors.white), // Set text color and font size
                      ),
                    ),

                    // Transparent Rectangle with Text
                    Container(
                      margin: EdgeInsets.only(
                          top: 16), // Adjusted margin to move the text down
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color:
                            Colors.blue.withOpacity(0.75), // Set opacity to 75%
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Text(
                        '@R22EJ111',
                        style: TextStyle(
                            fontSize: 14,
                            color:
                                Colors.white), // Set text color and font size
                      ),
                    ),

                    // "It's hard to believe" and "Member | Event management" outside the rectangle
                    Container(
                      margin: EdgeInsets.only(
                          top: 16), // Adjusted margin to move the text down
                      child: Text(
                        "It's hard to believe",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 16), // Adjusted margin to move the text down
                      child: Text(
                        "Member | Event management",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),

                    // "About me" Text
                    Container(
                      margin: EdgeInsets.only(
                          left: 16,
                          top:
                              16), // Adjusted margin to move the text left and down
                      child: Text(
                        "About me",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
