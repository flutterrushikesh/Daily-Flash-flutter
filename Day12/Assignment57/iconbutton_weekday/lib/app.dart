import 'package:flutter/material.dart';

class IconButtonDemo extends StatefulWidget {
  const IconButtonDemo({super.key});
  @override
  State createState() => _IconButtonDemoState();
}

class _IconButtonDemoState extends State {
  TextEditingController daysController = TextEditingController();

  List weekList = [];

  @override
  Widget build(BuildContext contexy) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icon button"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: daysController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      weekList.add({'days': daysController.text});
                    });
                    daysController.clear();
                  },
                  icon: const Icon(
                    Icons.done,
                  ),
                ),
                label: const Text("Enter weekdays"),
                hintText: "Enter weekdays",
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
                itemCount: weekList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(weekList[index]["days"]),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
