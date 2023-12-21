import 'package:flutter/material.dart';

class form1 extends StatelessWidget {
  const form1({Key? key})
      : super(
          key: key,
        );

  set mediaQueryData(MediaQueryData mediaQueryData) {}

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29,
            vertical: 13,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 293,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
                child: Text(
                  "Previous Track(if you have participated)",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  // style: CustomTextStyles.titleLargeWhiteA700,
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              SizedBox(height: 3),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "AI/ML",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 2),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Web Development",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 1),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Ui | Ux",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 4),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 11,
                          top: 3,
                        ),
                        child: Text(
                          "Android App Dev",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 3),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                          top: 2,
                        ),
                        child: Text(
                          "Game Development",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 1),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Web3 | Blockchain",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text(
                  "1st preferred Track for cycle 5",
                  // style: CustomTextStyles.titleLargeWhiteA700,
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "AI/ML",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 2),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Web Development",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 1),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Ui | Ux",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 4),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 11,
                          top: 3,
                        ),
                        child: Text(
                          "Android App Dev",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 3),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                          top: 2,
                        ),
                        child: Text(
                          "Game Development",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 1),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Web3 | Blockchain",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26),
              Text(
                "2nd preferred Track for cycle 5",
                // style: CustomTextStyles.titleLargeWhiteA700,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              SizedBox(height: 9),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "AI/ML",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 2),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Web Development",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 1),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Ui | Ux",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 4),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 11,
                          top: 3,
                        ),
                        child: Text(
                          "Android App Dev",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 3),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                          top: 2,
                        ),
                        child: Text(
                          "Game Development",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(
                          255, 57, 181, 164), // Adjust color as needed
                      radius: 8.0, // Adjust size as needed
                    ),
                    SizedBox(width: 2.0),
                    Container(
                      height: 22,
                      width: 24,
                      margin: EdgeInsets.only(bottom: 1),
                      decoration: BoxDecoration(
                        // color: appTheme.blueGray300,
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: Text(
                          "Web3 | Blockchain",
                          // style: theme.textTheme.bodyMedium,
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
