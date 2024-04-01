import 'dart:developer';

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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  String? phoneError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone validation"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: "Enter Phone no",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a phone number';
                  } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                    return 'Please enter a valid 10-digit phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 19),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    bool validateTextFeilds = formKey.currentState!.validate();
                    if (validateTextFeilds) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Validation passed"),
                        ),
                      );
                    } else {
                      setState(() {
                        phoneError = phoneController.text.isEmpty
                            ? 'PhoneNo is required'
                            : null;
                      });
                    }
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                  ),
                  child: const Text(
                    "Validate",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    log("In dispose");
    super.dispose();
  }
}
