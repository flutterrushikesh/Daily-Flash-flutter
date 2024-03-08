import 'package:flutter/material.dart';

class RowContainers extends StatefulWidget {
  const RowContainers({super.key});
  @override
  State createState() => _RowContainerState();
}

class _RowContainerState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Container in row"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.red,
          ),
          Container(
            height: 70,
            width: 80,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
