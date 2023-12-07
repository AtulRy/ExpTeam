import 'package:flutter/material.dart';

void main() {
  runApp(ThankYouPage());
}

class ThankYouPage extends StatelessWidget {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://cdn.pixabay.com/photo/2023/09/13/07/29/ghost-8250317_1280.png', // Replace with the actual image path
          width: 200,
          height: 280,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 20),
        Text(
          'Thank You!',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'for applying to Dev/Track',
          style: TextStyle(
            fontSize: 20,
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
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
