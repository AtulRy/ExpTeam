import 'package:flutter/material.dart';

class MainPage1 extends StatefulWidget {
  const MainPage1({Key? key}) : super(key: key);

  @override
  State<MainPage1> createState() => _MainPage1State();
}

class _MainPage1State extends State<MainPage1> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[buildTop(),buildContext()],
    ));
  }

  Widget buildTop() {
    final bottom= profileHeight/2;
    final top = coverHeight - profileHeight / 2;
    return 
       Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child:buildCoverImage(),
          ),
          Positioned(top: top, child: buildProfileImage(),),
          
        ],
      );
    
  }

  Widget buildCoverImage() => Container(
        width: double.infinity,
        height: coverHeight,
        color: Colors.grey,
        child: Image.network( 
          'https://getwallpapers.com/wallpaper/full/3/6/4/273924.jpg',
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
          'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?w=740&t=st=1701371617~exp=1701372217~hmac=8f8a77df6200671b517bd86ee177a25b331977a1ad5ca4d024d31418ef642d83',
        ),
      );
  Widget buildContext() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
              "About me",
              style: TextStyle(fontSize: 18, height: 1.4),
            ),const SizedBox(height: 16,),
            Text(
              "Hey! 👋 I'm Nikhil.🌟 Constantly curious, forever learning. 📚 Expressing creativity through [Your Creative Outlets]. ☕ Coffee addict, wanderlust-infected adventurer. 🌍 Let's share stories and good vibes! 🌈✨ #AboutMe #LifeAdventures",
              style: TextStyle(fontSize: 18, height: 1.4),
            )
          ]
          
        )
      );
}


