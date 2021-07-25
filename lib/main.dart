import 'package:flutter/material.dart';
// import 'package:book/navbar.dart';
import 'package:book/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: Login(),
    );
  } 
}
