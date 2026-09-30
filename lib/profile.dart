import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SafeArea(child: Text("Profile")),),
        body: Text("This is profile section", style: TextStyle(fontSize: 30),)
    );
  }
}
