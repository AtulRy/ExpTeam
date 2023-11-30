import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterproj/main.dart';

class Formpage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040D12),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              InputField(label: 'Go wild, we wanna know who you are as a person'),
              InputField(label: 'Share your stories with us'),
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
              MaterialPageRoute(builder: (context) => Formpage()),
            );
          },
          backgroundColor: Color(0xFF93B1A4).withOpacity(0.6),
          child: Text(
            'Submit',
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
            BorderSide(color: Color(0x183D3D).withOpacity(0.6), width: 5.0,),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Color(0x183D3D).withOpacity(0.6), width: 5.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}