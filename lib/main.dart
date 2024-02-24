import 'package:flutter/material.dart';
import 'package:grocery_flutter/screen/Profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}