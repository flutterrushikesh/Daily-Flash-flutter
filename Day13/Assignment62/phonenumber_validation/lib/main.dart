import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PhoneValidation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PhoneValidation extends StatefulWidget {
  const PhoneValidation({super.key});
  @override
  State createState() => _PhoneValidationState();
}

class _PhoneValidationState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
