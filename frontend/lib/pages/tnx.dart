import 'package:flutter/material.dart';
///page by nikhil aka tiny
void main() {
  runApp(TnxPage());
}

class TnxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF040D12),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF040D12),
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'frontend/lib/images/ghost.png',
          width: 200,
          height: 280,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 20),
        Text(
          'Thank You!',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Color(0xFF93B1A4),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'for applying to Dev/Track',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),

        SizedBox(height: 10),
        Opacity(
          opacity: 0.5,
          child: Text(
            "Thank you for applying to join Dev/Track! Your interest in our club is truly appreciated. Our team will review your application promptly and reach out to you soon. If you have any immediate questions, feel free to contact us at devtrack@gmail.com. We look forward to the possibility of having you contribute to Dev/Track's exciting projects!\n\n",
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        Opacity(
          opacity: 0.5,
          child: Text(
            "Best, Dev/Track Team",
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Poppins',
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    ),
    );
  }
}
