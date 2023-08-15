import 'package:flutter/material.dart';
import 'package:flutter_hello_world/screens/intro_screen.dart';
import 'package:flutter_hello_world/theme/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Title',
      routes: AppRoutes.define(),
      home: IntroScreen(),
    );
  }
}
