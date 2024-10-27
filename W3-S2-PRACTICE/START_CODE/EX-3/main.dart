import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Exercise3"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 100, top: 5, right: 100, bottom: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.blue[100]),
            child: Center(
              child: Text(
                "OOP",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 100, top: 5, right: 100, bottom: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Colors.blue[300]),
            child: const Center(
              child: Text(
                "DART",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 100, top: 5, right: 100, bottom: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 100, 181, 246),
                  Color(0xff0B3CBD)
                ])),
            child: const Center(
              child: Text(
                "FLUTTER",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}
