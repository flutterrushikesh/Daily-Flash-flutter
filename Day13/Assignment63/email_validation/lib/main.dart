import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EmailValidation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class EmailValidation extends StatefulWidget {
  const EmailValidation({super.key});
  @override
  State createState() => _EmailValidationState();
}

class _EmailValidationState extends State {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  String? emailError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Email validation"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Enter Email id",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email address';
                  } else if (!value.endsWith('@gmail.com')) {
                    return 'Please enter a valid Gmail address';
                  } else if (value.contains(' ')) {
                    return 'Email address cannot contain spaces';
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
                        emailError = emailController.text.isEmpty
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
}
