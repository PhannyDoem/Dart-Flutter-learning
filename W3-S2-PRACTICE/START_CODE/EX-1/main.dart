import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 94, 255),
        title: const Text("Exercise1"),
      ),
      body: const Center(
        child: Text(
          "Hello my name is Phanny!",
          style: TextStyle(color: Colors.lightBlue, fontSize: 25),
        ),
      ),
    )),
  );
}
