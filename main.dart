// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:domainn/pages/form.dart';

void main() {
  runApp(const MyApp());
  runApp(const Homepage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: ThemeData(primarySwatch: const Color.fromARGB(221, 6, 6, 6)),
    );
  }
}
