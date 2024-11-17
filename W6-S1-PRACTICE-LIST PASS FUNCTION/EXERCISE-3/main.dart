import 'package:flutter/material.dart';
import 'package:week6/EXERCISE-3/screen/temperature.dart';
import 'package:week6/EXERCISE-3/screen/welcome.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool _isWelcome = true;

  void _switchScreen(){
    setState(() {
      _isWelcome = false;
    });
  } 
  
  @override
  Widget build(context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: _isWelcome ? Welcome(onSwitch: _switchScreen) : Temperature()
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}