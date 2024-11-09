import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableButton(),
            SizedBox(height: 20),
            SelectableButton(),
            SizedBox(height: 20),
            SelectableButton(),
            SizedBox(height: 20),
            SelectableButton(),
          ],
        )),
      ),
    ));

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool isSelected = false;

  void toggleSelection() {
    setState(() {
      isSelected = true;
    });
  }

  String get _textlabel => isSelected ? "Selected" : "Not Selected";
  Color get _textColor => isSelected ? Colors.white : Colors.black;
  Color get _backgroundColor =>
      isSelected ? Colors.blue[500]! : Colors.blue[50]!;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
          onPressed: toggleSelection,
          style: ElevatedButton.styleFrom(backgroundColor: _backgroundColor),
          child: Center(
            child: Text(
              _textlabel,
              style: TextStyle(color: _textColor),
            ),
          )),
    );
  }
}
