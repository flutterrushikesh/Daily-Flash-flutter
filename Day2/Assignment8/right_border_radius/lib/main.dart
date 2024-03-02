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
            "Right Corner",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
            ),
          ),
        )),
      ),
    );
  }
}
