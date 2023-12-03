import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/pages/home.dart';
import 'package:first_app/pages/loginOrRegister.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return LoginOrRegister();
            }
          }),
    );
  }
}
