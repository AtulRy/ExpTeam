import 'package:flutter/material.dart';

class form extends StatefulWidget {
  form({Key? key}) : super(key: key);

  @override
  _formState createState() {
    return _formState();
  }
}

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 48),
              Text(
                'Dev/Hub',
                style: TextStyle(
                  fontSize: 64,
                  color: Color.fromARGB(255, 41, 194, 171),
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
                '  5th Cycle is starting soon! Choose your domains!',
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              InputField(label: 'Name'),
              InputField(label: 'Email'),
              InputField(label: 'Phone Number'),
              InputField(label: 'SRN/Registration number'),
              InputField(label: 'Branch'),
              InputField(label: 'Semester'),
              SizedBox(height: 20),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  // Add your logic here for arrow button onPressed
                },
                iconSize: 40,
                color: Colors.white,
              ),
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
        ),
      ),
    );
  }
}
