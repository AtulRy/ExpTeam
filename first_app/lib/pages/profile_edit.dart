import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _bioController = TextEditingController();
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF183D3D),
      appBar: AppBar(
        title: Text('Edit Profile'),
        titleTextStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        backgroundColor: Color(0xFF183D3D),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: GestureDetector(
                  onTap: () {
                    _pickImage();
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: _image != null
                        ? FileImage(_image!) as ImageProvider<Object>?
                        : AssetImage(
                            'assets/C:UsersUserDesktopnewExpTeamrayan.jpg'),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20.0,
                        child: Icon(Icons.edit),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Username:',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              TextFormField(
                controller: _nameController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Name:',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              TextFormField(
                controller: _nameController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Title:',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              TextFormField(
                controller: _emailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'What do you wish to call yourself?',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'GitHub url:',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              TextFormField(
                controller: _nameController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Enter your GitHub URL',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Linkedin url:',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              TextFormField(
                controller: _nameController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Enter your Linkedin URL',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'About Me:',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              TextFormField(
                controller: _bioController,
                style: TextStyle(color: Colors.white),
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Tell us about yourself',
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Handle save button press
                  saveProfile();
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _pickImage() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void saveProfile() {
    String name = _nameController.text;
    String email = _emailController.text;
    String bio = _bioController.text;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Profile saved successfully'),
      ),
    );
  }
}
