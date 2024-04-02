import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NamesValidation extends StatefulWidget {
  const NamesValidation({super.key});
  @override
  State createState() => _NamesValidationState();
}

class _NamesValidationState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController collegeNameController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  List studentList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Data"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  label: Text("Enter your name"),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter name";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: collegeNameController,
                decoration: const InputDecoration(
                  label: Text("Enter college name"),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter college name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  bool validate = formkey.currentState!.validate();
                  if (validate) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Validate"),
                      ),
                    );
                    setState(() {
                      studentList.add({
                        'name': nameController.text,
                        'collegename': collegeNameController.text
                      });
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please provide all details"),
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
                  "Submit",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: studentList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 70,
                        width: 200,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Name: ${studentList[index]['name']}",
                            ),
                            Text(
                              "College name: ${studentList[index]['collegename']}",
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
