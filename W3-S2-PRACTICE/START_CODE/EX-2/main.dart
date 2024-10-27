import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 7, 222, 255),
      title: const Text("Exercise2"),
    ),
    body: Container(
      color: Colors.blue[300],
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.only(top: 50, bottom: 50, right: 40, left: 40),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.blue[600], borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "CADT STUDENTS",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )),
    ),
  )));
}
