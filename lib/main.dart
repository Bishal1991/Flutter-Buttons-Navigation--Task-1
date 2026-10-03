import 'package:classassignment/add.dart';
import 'package:classassignment/details.dart';
import 'package:classassignment/login.dart';
import 'package:classassignment/profile.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(

      initialRoute: '/',
      routes: {
        '/': (context) => const loginPage(),
        '/buttons': (context) => const Home(),
        '/profile': (context) => const Profile(),
        '/details': (context) => const Details(),
        '/add': (context) => const addPage(),
      },
    debugShowCheckedModeBanner: false,
    home: loginPage(),
    )
  );
}

