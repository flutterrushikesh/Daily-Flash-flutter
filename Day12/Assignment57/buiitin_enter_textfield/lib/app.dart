import 'package:flutter/material.dart';

class Enter extends StatefulWidget {
  const Enter({super.key});
  @override
  State createState() => _EnterState();
}

class _EnterState extends State {
  TextEditingController weekDaysController = TextEditingController();
  List weekdays = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Built in enter"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: const Text("Enter weekdays"),
                hintText: "Enter weekdays",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.done),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
