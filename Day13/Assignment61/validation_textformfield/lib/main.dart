import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ValidationFeild(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ValidationFeild extends StatefulWidget {
  const ValidationFeild({super.key});
  @override
  State createState() => _ValidationFeildState();
}

class _ValidationFeildState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? nameError;
  String? ageError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Validate textformfeild"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Enter name",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Plese enter name";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: ageController,
                decoration: const InputDecoration(
                  labelText: "Enter age",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Plese enter age";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 19),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    bool validateTextFeilds = _formKey.currentState!.validate();
                    if (validateTextFeilds) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Validation passed"),
                        ),
                      );
                    } else {
                      setState(() {
                        nameError = nameController.text.isEmpty
                            ? 'Name is required'
                            : null;

                        ageError = ageController.text.isEmpty
                            ? 'age is required'
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
