import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Left border & padding",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.red,
                  width: 5,
                ),
              ),
            ),
            child: const Center(
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
