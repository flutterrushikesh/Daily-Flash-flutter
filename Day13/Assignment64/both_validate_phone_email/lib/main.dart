import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BothValidate(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BothValidate extends StatefulWidget {
  const BothValidate({super.key});
  @override
  State createState() => _BothValidateState();
}

class _BothValidateState extends State {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? phoneError;
  String? emailError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Email & phone validation"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
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
                    bool validateTextFeilds = formkey.currentState!.validate();
                    if (validateTextFeilds) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Validation passed"),
                        ),
                      );
                    } else {
                      setState(() {
                        emailError = emailController.text.isEmpty
                            ? 'EmailId is required'
                            : null;
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
}
