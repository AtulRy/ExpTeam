import 'package:first_app/pages/home.dart';
import 'package:flutter/material.dart';

class form extends StatefulWidget {
const form({Key? key}) : super(key: key)

  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\<dev/tracker\>",
                style: TextStyle(
                  fontSize: 62,
                  color: const Color.fromARGB(255, 2, 65, 34),
                  fontFamily: 'Poppins',
                ),
              ),

            Text(
              'Domain Preference',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              '5th Cycle is starting soon! Choose your domains!',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontFamily: 'Poppins',
              )),
              SizedBox(height: 20,),
              Text(
                '5th Cycle is starting soon!\nChoose your domains!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
                

              ),
              SizedBox(height: 40,),
              InputField(label: 'Name'),
              InputField(label: 'Email'),
              InputField(label: 'Phone Number'),
              InputField(label: 'SRN/Registration number'),
              InputField(label: 'Branch'),
              InputField(label: 'Semester'),
            ],
          ),
        ),
      ),
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
            borderSide: BorderSide(
                color: Color.fromARGB(255, 15, 95, 84).withOpacity(0.6),
                width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 15, 95, 84).withOpacity(0.6),
                width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          Image.network('https://www.figma.com/file/QqSrXUf7uC5zbqiUVEULFY/dev%2Fhub?type=design&node-id=252-90&mode=design&t=EvTJV0U1Fx0TzYea-4',
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }   
}
