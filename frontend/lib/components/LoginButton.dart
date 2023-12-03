import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const LoginButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        width: 170,
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF183D3D), width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFF183D3D)), //0xFF93B1A6
        child:  Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
