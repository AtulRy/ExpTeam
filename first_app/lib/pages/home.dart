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
      body: Column(
        children: <Widget>[buildTop(), Expanded(child: buildContent()), buildContext()],
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
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 16),
      Text(
        'Designer',
        style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.w300,
        ),
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
     backgroundColor: Color(0xFF040D12),
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
        child: Column(
          children: [
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  'Project Cycle V',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 4),
                Spacer(),
                const SizedBox(width: 8),
            Spacer(),
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/8b8aedd6c47f5ece7251a391ff0ba060-1590910698170/d9aba471-3530-4984-b293-8c3bc94c6935.jpg',
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: () {
                // Navigate to the profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            
            Expanded(
              child: ListView(
                children: [
                  _buildCard('App Dev-51', 'Dev/Track Dashboard','Your Gateway to Seamless Access! Empowering teachers to effortlessly upload and students to conveniently access notes across diverse schools and branches within Reva University', 211, 320),
                  const SizedBox(height: 8),
                  _buildCard('Web Dev-53', 'NotesNinja','Project  Description :  A app/web dashboard for our very own dev/track members that provides a better platform for mentors to monitor and...read more', 211, 320),
                  const SizedBox(height: 8),
                  _buildCard('Ui/Ux-42', 'Uni App','Your Gateway to Seamless Access! Empowering teachers to effortlessly upload and students to conveniently access notes across diverse schools and branches within Reva University', 211, 320),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, String content, String content2, double height, double width) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Color(0xFF183D3D),
      elevation: 3,
      child: Container(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                content,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
              content2,
                style:TextStyle (
                  fontWeight: FontWeight.w200,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
