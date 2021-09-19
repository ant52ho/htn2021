import 'package:flutter/material.dart';
import 'src/login.dart';
import 'src/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
  return MaterialApp(home: Login());
  }
}