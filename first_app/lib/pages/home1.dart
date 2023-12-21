import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040D12),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'Project Cycle V',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 4),
                Spacer(),
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/8b8aedd6c47f5ece7251a391ff0ba060-1590910698170/d9aba471-3530-4984-b293-8c3bc94c6935.jpg',
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildCard('App Dev-51', 'Dev/Track Dashboard','Your Gateway to Seamless Access! Empowering teachers to effortlessly upload and students to conveniently access notes across diverse schools and branches within Reva University', 211, 320),
                  const SizedBox(height: 8),
                  _buildCard('Web Dev-53', 'NotesNinja','Project  Description :  A app/web dashboard for our very own dev/track members that provides a better platform for mentors to monitor and...read more', 211, 320),
                  const SizedBox(height: 8),
                  _buildCard('Ui/Ux-42', 'Uni App','Your Gateway to Seamless Access! Empowering teachers to effortlessly upload and students to conveniently access notes across diverse schools and branches within Reva University', 211, 320),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, String content, String content2, double height, double width) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Color(0xFF183D3D),
      elevation: 3,
      child: Container(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                content,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
              content2,
                style:TextStyle (
                  fontWeight: FontWeight.w200,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}