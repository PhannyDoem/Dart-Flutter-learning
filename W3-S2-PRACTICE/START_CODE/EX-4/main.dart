// Start from the exercice 3 code

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Exercise4"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(
                text: 'HELLO',
              ),
              CustomCard(
                text: 'OOP',
                color: Colors.green[600],
              ),
              CustomCard(
                text: 'DART',
                gradientColors: [Colors.teal, Colors.purple],
              ),
              CustomCard(
                text: 'FLUTTER',
                gradientColors: [Colors.pink, Colors.orange],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.text,
      this.color = Colors.blue,
      this.gradientColors});

  final String text;
  final Color? color;
  final List<Color>? gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 100, top: 5, right: 100, bottom: 5),
      decoration: BoxDecoration(
          color: gradientColors == null ? color : null,
          gradient: gradientColors != null
              ? LinearGradient(colors: gradientColors!)
              : null,
          borderRadius: BorderRadius.circular(35)),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}
