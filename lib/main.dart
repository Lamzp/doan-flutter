import 'dart:html';
import 'package:flutter/material.dart';

import 'register/login.dart';
import 'register/register.dart';
import 'question/questionPage.dart';
import 'home/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
