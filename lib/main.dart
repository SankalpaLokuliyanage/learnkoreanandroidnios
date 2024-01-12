import 'package:flutter/material.dart';
import 'package:newa/pages/login.dart';
import 'package:newa/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learn 한국어",
      home: RegisterPage(),
    );
  }
}



