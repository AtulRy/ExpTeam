import 'package:flutter/material.dart';

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040D12),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dev/Hub',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/8b8aedd6c47f5ece7251a391ff0ba060-1590910698170/d9aba471-3530-4984-b293-8c3bc94c6935.jpg',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _buildCard('Project Page', Color(0xFF183D3D)),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _buildCard('Leaderboard', Color(0xFF0183D3D)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: _buildCard('Calendar', Color(0xFF183D3D)),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _buildCard('Application form', Color(0xFF183D3D)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: _buildCard('Preference form', Color(0xFF183D3D)),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _buildCard('More', Color(0xFF183D3D)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String cardContent, Color cardColor) {
    return Container(
      width: 172,
      height: 123,
      child: Card(
        color: cardColor,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            cardContent,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
