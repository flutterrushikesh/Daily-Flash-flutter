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
          leading: const Icon(
            Icons.account_box_rounded,
            size: 30,
          ),
          actions: const [
            Icon(
              Icons.favorite_border_rounded,
              size: 30,
            ),
          ],
          title: const Text(
            "PhonePe",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
