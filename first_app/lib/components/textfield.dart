import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const Mytextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),

      child: TextField(

        style: TextStyle(color: Colors.white),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
        labelText: hintText,
            labelStyle: TextStyle(color: Colors.grey[700]),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF183D3D),width: 2.0),
            borderRadius: BorderRadius.circular(10.0),

          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF3D6F71),width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          // hintText: hintText,

        ),

      ),
    );
  }
}
