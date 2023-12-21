import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
            height: 300,
            decoration: BoxDecoration(
                color: Color.fromRGBO(23, 123, 115, 1),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1565106430482-8f6e74349ca1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  radius: 50,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "WEB DEVELOPMENT",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Row(
                  children: [
                    Column(
                      Text(""),
                      Text("Level"),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("#335"),
                    Text("Rank"),
                  ],
                )
              ],
            )));
  }
}
