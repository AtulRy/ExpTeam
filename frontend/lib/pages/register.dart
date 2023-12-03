// import 'dart:js';
// import 'package:path/path.dart' as Path;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/components/LoginButton.dart';
import 'package:first_app/components/textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //sign in
  signUserUp() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: usernameController.text,
          password: passwordController.text,
        );
        Navigator.pop(context);
      } else {
        Navigator.pop(context);
        showError("Passwords don't match!");
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);

      showError(e.code); //change later
    }
  }

  void showError(String error) {
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
                    'Hey There! We\'re Glad to See You!!\nLet\'s get you an account!',
                    style: TextStyle(color: Colors.grey[500]),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40),

                  Mytextfield(
                    controller: usernameController,
                    hintText: 'Email ID',
                    obscureText: false,
                  ),
                  const SizedBox(height: 30),
                  Mytextfield(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  Mytextfield(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  LoginButton(
                    text: "Sign Up",
                    onTap: signUserUp,
                  ),

                  const SizedBox(
                    height: 60,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have an Account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(" Login Now",
                            style: TextStyle(
                                decorationColor: Color(0xFF93B1A6),
                                decorationThickness: 1.5,
                                color: Color(0xFF93B1A6))),
                      ),
                    ],
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
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
