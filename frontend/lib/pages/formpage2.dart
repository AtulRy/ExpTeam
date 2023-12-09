import 'package:flutter/material.dart';
class Formpage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040D12),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Application for Dev/Track',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(height: 20),
            InputField(label: 'Tell us more about yourself, what makes you___,y’know?'),
            InputField(label: 'Tell us about your coding adventures, have you dabbled in any programming languages or worked on any cool projects?'),
            SizedBox(height: 20),

            // Radio Buttons for Development Track
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Now choose a field you would wanna work on...',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Column(
                    children: [
                      RadioListTile<String>(
                        title: Text(
                          'AI',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        value: 'AI',
                        groupValue: null,
                        onChanged: (String? value) {
                          // Add your logic here
                        },
                      ),
                      RadioListTile<String>(
                        title: Text(
                          'Game Development',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        value: 'Game Development',
                        groupValue: null,
                        onChanged: (String? value) {

                        },
                      ),
                      RadioListTile<String>(
                        title: Text(
                          'Android',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        value: 'Android',
                        groupValue: null,
                        onChanged: (String? value) {

                        },
                      ),
                      RadioListTile<String>(
                        title: Text(
                          'Web Development',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        value: 'Web Development',
                        groupValue: null,
                        onChanged: (String? value) {
                        },
                      ),
                      RadioListTile<String>(
                        title: Text(
                          'UI/UX',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        value: 'UI/UX',
                        groupValue: null,
                        onChanged: (String? value) {
                        },
                      ),

                      InputField(label: 'Why did you choose that specific track?'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Do you have a GitHub account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Row(
                    children: [
                      Radio(value: true, groupValue: null, onChanged: null),
                      Text(
                        'Yes',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Radio(value: false, groupValue: null, onChanged: null),
                      Text(
                        'No',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InputField(label: 'Please enter your GitHub ID!'),
            InputField(label: 'Enter your LinkedIn profile URL!'),
            InputField(label: 'Drop your resume if you got one'),



            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF93B1A4).withOpacity(0.6),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),

            SizedBox(height: 50),
          ],
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
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
        maxLines: 3,
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
              color: Color(0x183D3D).withOpacity(0.6),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x183D3D).withOpacity(0.6),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}