import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
      ),
      body: Center(
        child: Text("Ur in Bish!Congrats \n"+user.email!,
        style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
