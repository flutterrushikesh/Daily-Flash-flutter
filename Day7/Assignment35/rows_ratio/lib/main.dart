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
          backgroundColor: Colors.blue,
          title: const Text(
            "3 row ratio",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    height: 100,
                    width: 42,
                    color: Colors.green,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 191,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    width: 159,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 100,
                    width: 42,
                    color: Colors.yellow,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 270,
                    color: Colors.black,
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    color: Colors.blueAccent,
                  ),
                  Container(
                    height: 100,
                    width: 42,
                    color: Colors.cyanAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
