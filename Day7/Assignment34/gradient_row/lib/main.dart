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
          title: const Text(
            "Row in ratio 6:3:1",
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            children: [
              Container(
                height: 100,
                width: 250,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.purple,
              ),
              Container(
                height: 100,
                width: 42.5,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
