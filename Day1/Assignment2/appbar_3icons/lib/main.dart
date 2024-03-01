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
            "Core2Web",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
          backgroundColor: const Color.fromRGBO(0, 139, 147, 0.7),
          actions: const [
            Icon(
              Icons.favorite_outline_outlined,
              size: 28,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.notifications,
              size: 28,
            ),
            SizedBox(width: 5),
            Icon(Icons.account_circle_outlined, size: 28),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
