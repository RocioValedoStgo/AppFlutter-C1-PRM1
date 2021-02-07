import 'package:flutter/material.dart';
import 'package:finalappc1/src/pages/home.dart';
import 'package:finalappc1/src/pages/login.dart';
import 'package:finalappc1/src/pages/list.dart';
import 'package:finalappc1/src/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/login': (context) => Login(),
        '/list': (context) => List(),
        Profile.routeName: (context) => Profile()
      },
    );
  }
}
