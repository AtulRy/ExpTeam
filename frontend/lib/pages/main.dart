import 'package:flutter/material.dart';
import 'package:domainn/pages/form.dart';
import 'package:domainn/pages/form1.dart';
import 'package:domainn/pages/leaderboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: form(),
    );
  }
}
