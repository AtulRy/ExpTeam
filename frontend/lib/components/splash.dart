import 'dart:async';
import 'package:first_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  double opacityLevel = 0.0;

  @override
  void initState() {
    super.initState();
    _fadeAnimation();
  }

  _fadeAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));

    setState(() {
      opacityLevel = 1.0;
    });

    await Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040D12),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: opacityLevel,
              child: Image.asset(
                'assets/logo.png',
                height: 300.0,
                width: 300.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
