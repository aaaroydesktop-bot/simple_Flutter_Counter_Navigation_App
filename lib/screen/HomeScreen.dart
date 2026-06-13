import 'package:assignment/screen/DetailsScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int number = 6;

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    debugPrint("HomeScreen Started");
  }

  @override
  void dispose() {
    debugPrint("HomeScreen Closed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Value", style: TextStyle(fontSize: 25)),
            SizedBox(height: 20),
            Text(number.toString(), style: TextStyle(fontSize: 25)),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number++;
                      });
                    },
                    child: Text("Increment"),
                  ),
                  SizedBox(width: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(counterValue: number),
                        ),
                      );
                    },
                    child: Text("details"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
