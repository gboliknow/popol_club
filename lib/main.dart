import 'package:flutter/material.dart';
import 'package:popl_club_8/welcome/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popol Club',
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
