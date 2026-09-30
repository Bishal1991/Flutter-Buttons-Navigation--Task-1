import 'package:flutter/material.dart';

class addPage extends StatelessWidget {
  const addPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: SafeArea(child: Text("Add")),),
        body: Text("This is add section", style: TextStyle(fontSize: 30),)
    );
  }
}
