import 'package:first_app/pages/test.dart';
import 'package:flutter/material.dart';
import 'pages/profile_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MainPage1(),
      );
  }
}
