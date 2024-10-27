import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();

  }
}

void main() {
  runApp(MaterialApp(
    home: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xff4F7EF7), Color(0xff1142BF)]),
              borderRadius: BorderRadius.circular(30)),
          child: const Text("HELLO 1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  decoration: TextDecoration.none)),
        ),
        Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xff4F7EF7), Color(0xff1142BF)]),
              borderRadius: BorderRadius.circular(30)),
          child: const Text("HELLO 2",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  decoration: TextDecoration.none)),
        ),
        Container(
          padding: const EdgeInsets.all(40),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xff4F7EF7), Color(0xff1142BF)]),
              borderRadius: BorderRadius.circular(30)),
          child: const Text("HELLO 3",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  decoration: TextDecoration.none)),
        ),
      ],
    ),
  ));
}
