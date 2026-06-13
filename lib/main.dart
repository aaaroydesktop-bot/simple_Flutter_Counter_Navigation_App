import 'package:assignment/Register_Screen_UI.dart';
import 'package:assignment/simple_Flutter_Counter_Navigation_App.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SimpleflutterCounterNavigationApp(),
    );
  }
}
