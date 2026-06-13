// ignore: file_names
import 'package:assignment/screen/AboutScreen.dart';
import 'package:assignment/screen/DetailsScreen.dart';
import 'package:assignment/screen/HomeScreen.dart';
import 'package:flutter/material.dart';

class SimpleflutterCounterNavigationApp extends StatefulWidget {
  const SimpleflutterCounterNavigationApp({super.key});

  @override
  State<SimpleflutterCounterNavigationApp> createState() =>
      _SimpleflutterCounterNavigationAppState();
}

int selectedIndex = 0;
List<Widget> screen = [HomeScreen(), Aboutscreen()];

class _SimpleflutterCounterNavigationAppState
    extends State<SimpleflutterCounterNavigationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          selectedIndex = value;
          setState(() {
            
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.info), label: "about"),
        ],
      ),
    );
  }
}
