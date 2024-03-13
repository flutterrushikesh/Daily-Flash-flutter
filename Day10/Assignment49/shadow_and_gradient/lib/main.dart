import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shadow & Gradient"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(
                    10,
                    10,
                  ),
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade400,
                  Colors.purple,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
