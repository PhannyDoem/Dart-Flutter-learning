import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(35),
          decoration: BoxDecoration(
              gradient:
                  const LinearGradient(colors: [Colors.yellow, Colors.red]),
              borderRadius: BorderRadius.circular(30)),
          child: const Text("HELLO 1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  decoration: TextDecoration.none)),
        ),
        Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(35),
          color: Colors.blue,
          child: const Text("HELLO 2",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  decoration: TextDecoration.none)),
        ),
        Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(35),
          color: Colors.blue,
          child: const Text("HELLO 3",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  decoration: TextDecoration.none)),
        )
      ],
    ),
  ));
}
