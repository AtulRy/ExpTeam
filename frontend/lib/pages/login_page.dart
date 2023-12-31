// import 'dart:js';
// import 'package:path/path.dart' as Path;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/components/LoginButton.dart';
import 'package:first_app/components/textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  final Function()? onTap;

  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  //sign in
  signUserIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text,
        password: passwordController.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      showError(e.code); //change later

      
    }
  }


void showError(String error){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(error),
          );
        });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF040D12),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const SizedBox(height: 50),
                  Text(
                    "<dev/tracker>",
                    style: TextStyle(fontSize: 50, color: Color(0xFF93B1A6)),
                  ),
                  const SizedBox(height: 50),

                  Text(
                    'Welcome Back! We missed You!\n\(Not you Rayan\)',
                    style: TextStyle(color: Colors.grey[500]),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40),

                  Mytextfield(
                    controller: usernameController,
                    hintText: 'Username',
                    obscureText: false,
                  ),
                  const SizedBox(height: 30),
                  Mytextfield(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  LoginButton(
                    text: "Login",
                    onTap: signUserIn,
                  ),
                  

                  const SizedBox(
                    height: 60,
                  ),

                
                  
                  

                          
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("Not Registered Yet? ",style: TextStyle(color: Colors.white),),
                          const SizedBox(height: 25,),

                          GestureDetector(
                            onTap: widget.onTap,
                            child: Text(" Register Now!",style: TextStyle(
                            decorationColor: Color(0xFF93B1A6),
                            decorationThickness: 1.5,
                            color: Color(0xFF93B1A6))),
                          ),],
                          ),

          const SizedBox(
                    height: 25,
                  ),

                          Text("Why Dev/Track?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xFF93B1A6),
                          decorationThickness: 1.5,
                          color: Color(0xFF93B1A6))),
                          const SizedBox(height: 25,),
                ],
              ),
            ),
          ),
        ));
  }
}
