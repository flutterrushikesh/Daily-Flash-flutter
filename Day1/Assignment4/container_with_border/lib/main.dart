import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            // color: Colors.blue,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                width: 5,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
