import 'package:flutter/material.dart';

class settingPage extends StatelessWidget {
  const settingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SafeArea(child: Text("Add")),),
      body: Text("This is setting section", style: TextStyle(fontSize: 30),)
    );
  }
}
