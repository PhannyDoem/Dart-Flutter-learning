import 'package:flutter/material.dart';

void onPress() {
  print('Hello');
}

void main() {
  runApp(MaterialApp(
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: onPress,
          child: const Text('Press me',
          style: TextStyle(fontSize: 30),),
        )
      ],
    ),
  ));
}
