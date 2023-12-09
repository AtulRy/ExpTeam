import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final double coverHeight = 200;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040D12),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[buildTop(), buildContent(), buildContext()],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(top: top, child: buildProfileImage()),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        width: double.infinity,
        height: 200,
        color: Colors.grey,
        child: Image.network(
          'https://cdn.pixabay.com/photo/2017/06/05/10/15/landscape-2373649_960_720.jpg',
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: profileHeight / 2,
            backgroundColor: Colors.grey.shade800,
            backgroundImage: NetworkImage(
              'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/8b8aedd6c47f5ece7251a391ff0ba060-1590910698170/d9aba471-3530-4984-b293-8c3bc94c6935.jpg',
            ),
          ),
          Positioned(
            child: GestureDetector(
              onTap: () {
                // Handle edit button press
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()));
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20.0,
                child: IconButton(
                  icon: Icon(Icons.edit, color: Colors.black),
                  onPressed: () {
                    // Handle edit button press
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfilePage()));
                  },
                ),
              ),
            ),
          ),
        ],
      );

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'Rayan Sheikky',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            'Designer',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.w300),
          ),
          Divider(),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.github),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.instagram),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.linkedin),
              const SizedBox(width: 12),
            ],
          ),
          const SizedBox(height: 16),
          Divider(),
          const SizedBox(height: 16),
        ],
      );

  Widget buildContext() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About me",
              style: TextStyle(color: Colors.white, fontSize: 18, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              "Hey! I'm Rayan. Constantly curious, forever learning. Expressing creativity through. Coffee addict, wanderlust-infected adventurer. Let's share stories and good vibes! #AboutMe #LifeAdventures",
              style: TextStyle(color: Colors.white, fontSize: 15, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Center(child: Icon(icon, size: 20)),
      );
}

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
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _bioController = TextEditingController();
  TextEditingController _linkController = TextEditingController();
  TextEditingController _gitController = TextEditingController();
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
                controller: _usernameController,
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
                controller: _gitController,
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
                controller: _linkController,
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
    String username = _usernameController.text;
    String name = _nameController.text;
    String email = _emailController.text;
    String bio = _bioController.text;
    String link = _linkController.text;
    String git = _gitController.text;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Profile saved successfully'),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF040D12),
      body: SafeArea(
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                // Navigate to the profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
              child: Text(
                'Project Cycle',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(width: 8),
            Spacer(),
            GestureDetector(
              onTap: () {
                // Navigate to the profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
              child: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  'https://www.google.com/imgres?imgurl=https%3A%2F%2Ffiverr-res.cloudinary.com%2Ft_profile_original%2Cq_auto%2Cf_auto%2Fattachments%2Fprofile%2Fphoto%2F8b8aedd6c47f5ece7251a391ff0ba060-1590910698170%2Fd9aba471-3530-4984-b293-8c3bc94c6935.jpg&tbnid=9COlJWK3n-GtUM&vet=12ahUKEwiT07D2uoKDAxUpSGwGHaTVCgwQMygBegQIARA0..i&imgrefurl=https%3A%2F%2Fwww.fiverr.com%2Fimryanide%2Fdraw-your-fictional-character&docid=eLT9tQjMnpwSUM&w=250&h=250&q=imryanide&hl=en-US&ved=2ahUKEwiT07D2uoKDAxUpSGwGHaTVCgwQMygBegQIARA0',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
