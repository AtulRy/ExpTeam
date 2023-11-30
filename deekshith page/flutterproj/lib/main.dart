import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterproj/form.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Formpage(),
    );
  }
}
class Formpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040D12),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dev/Hub',
                style: TextStyle(
                  fontSize: 64,
                  color: Color(0xFF93B1A4),
                  fontFamily: 'Poppins',
                ),
              ),
              Container(
                height: 100,
              ),
              Text(
                'Application for Dev/Track',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              InputField(label: 'Name'),
              InputField(label: 'Email'),
              InputField(label: 'Phone Number'),
              InputField(label: 'SRN'),
              InputField(label: 'Branch'),
              InputField(label: 'Semester'),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        width: 100.0,
        height: 50.0,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Formpage2()),
            );
          },
          backgroundColor: Color(0xFF93B1A4).withOpacity(0.6),
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
            borderSide:
                BorderSide(color: Color(0x183D3D).withOpacity(0.6), width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Color(0x183D3D).withOpacity(0.6), width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}