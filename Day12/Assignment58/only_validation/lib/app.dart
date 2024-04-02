import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});
  @override
  State createState() => _ValidationState();
}

class _ValidationState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController collegeNameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("validation"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  label: Text("Enter your name"),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Plase enter your name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: collegeNameController,
                decoration: const InputDecoration(
                  label: Text("Enter college name"),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Plase enter college name";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // bool validate = formKey.currentState!.validate();
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Validate successful"),
                      ),
                    );
                  }
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  minimumSize: MaterialStatePropertyAll(
                    Size(200, 50),
                  ),
                ),
                child: const Text(
                  'Validate',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
