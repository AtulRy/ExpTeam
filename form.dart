// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dev/Hub",
              style: TextStyle(
                fontSize: 64,
                color: const Color.fromARGB(255, 2, 65, 34),
                fontFamily: 'Poppins',
              ),
            ),
            Container(
              height: 100, // Set the desired height
            ),
            Text(
              '5th Cycle is starting soon! Choose your domains!',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            InputField(label: 'Name'),
            InputField(label: 'Email'),
            InputField(label: 'Phone Number'),
            InputField(label: 'SRN/Registration number'),
            InputField(label: 'Branch'),
            InputField(label: 'Semester'),
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String label;
  const InputField({Key? key, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 300,
      child: TextField(
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
        ),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontFamily: 'Poppins',
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 15, 95, 84).withOpacity(0.6),
                width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 15, 95, 84).withOpacity(0.6),
                width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
