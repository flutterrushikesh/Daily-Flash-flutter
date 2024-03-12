import 'package:flutter/material.dart';

class NameNo extends StatefulWidget {
  const NameNo({super.key});
  @override
  State createState() => _NameNoState();
}

class _NameNoState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  List listOfData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Name & number"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: "Enter name",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
            ),
            cursorColor: Colors.black,
            textInputAction: TextInputAction.done,
            onChanged: (value) => value,
            onSubmitted: (value) => value,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: phoneController,
            decoration: const InputDecoration(
              hintText: "Enter phone number",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
            ),
            cursorColor: Colors.black,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.number,
            onChanged: (value) => value,
            onSubmitted: (value) => value,
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.blue.shade100,
                ),
              ),
              onPressed: () {
                setState(() {
                  listOfData.add({
                    'name': nameController.text,
                    'phoneNo': phoneController.text
                  });
                });
              },
              child: const Text(
                "Submit",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listOfData.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name: ${listOfData[index]['name']}",
                          style: const TextStyle(fontSize: 17),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Phone no : ${listOfData[index]['phoneNo']}",
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
