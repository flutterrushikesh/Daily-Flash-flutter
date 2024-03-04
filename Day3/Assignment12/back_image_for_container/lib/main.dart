import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Container background"),
        ),
        body: Center(
          child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                // backgroundBlendMode: BlendMode.dstOver,
                color: Colors.amber,
              ),
              child: const Center(child: Text("Welcome..."))),
        ),
      ),
    );
  }
}
