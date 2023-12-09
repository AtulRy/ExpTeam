import 'package:first_app/components/LoginButton.dart';
import 'package:first_app/components/textfield.dart';
import 'package:first_app/pages/formpage1.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget{
  @override
  LoginPageState createState()=> LoginPageState();
}

class LoginPageState extends State<Loginpage>{



  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign in

  signUserIn() {

  }

 bool showImage=false;
    @override
  Widget build(BuildContext context){
      return Scaffold(
        backgroundColor: Color(0xFF040D12),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
               // const SizedBox(height: 50),
              Text("<DEV/HUB>",style: TextStyle(fontSize: 50,fontFamily: 'Poppins',color: Color(0xFF93B1A6)),),
              const SizedBox(height: 50),

                  Text('Welcome Back! We missed You!',
                    style: TextStyle(color: Colors.grey[500]),
                    textAlign: TextAlign.center,

                  ),
              GestureDetector(onTap: () {
                setState(() {
                  // Toggle the visibility of the image
                  showImage = !showImage;
                });
                Future.delayed(Duration(seconds: 2), () {
                  setState(() {
                    showImage = false;
                  });
                });
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not you Rayan',style: TextStyle(fontFamily: 'Poppins',color: Color(0xFF93B1A6)),),
                    SizedBox(height: 20),
              if(showImage)
                Image.asset('frontend/lib/images/launcher.png',width: 150,height: 150,)
                  ],
                ),
              ),),



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
                const SizedBox(height: 10,),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Forgot Password',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),

            const SizedBox(height: 25,),

              LoginButton(onTap: signUserIn,),

                const SizedBox(height: 60,),

                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member yet?\n ",style: TextStyle(color: Colors.white),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Formpage()),);},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF93B1A4).withOpacity(0.6),
                        ),
                        child: Text(
                          'Apply Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                Text("Why Dev/Track?",style: TextStyle(decoration: TextDecoration.underline,decorationColor: Color(0xFF93B1A6),decorationThickness: 1.5, color:  Color(0xFF93B1A6)))
            ],
            ),
          ),
        )

      );
    }
}