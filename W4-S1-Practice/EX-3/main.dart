import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, disabled }

enum IconPosition { left, right }

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Custom buttons"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomButton(
              label: 'Submit',
              icon: Icons.check,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              label: 'Time',
              icon: Icons.access_time,
              iconPosition: IconPosition.right,
              buttonType: ButtonType.secondary,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              label: 'Account',
              icon: Icons.account_tree_sharp,
              iconPosition: IconPosition.right,
              buttonType: ButtonType.disabled,
            )
          ],
        ),
      ),
    ),
  ));
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  const CustomButton(
      {super.key,
      required this.label,
      required this.icon,
      this.iconPosition = IconPosition.left,
      this.buttonType = ButtonType.primary});

  Color _getButtonColor() {
    switch (buttonType) {
      case ButtonType.primary:
        return Colors.blue;
      case ButtonType.secondary:
        return Colors.green;
      case ButtonType.disabled:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: _getButtonColor(), borderRadius: BorderRadius.circular(30)),
      child: iconPosition == IconPosition.left
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.black54,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  label,
                  style: const TextStyle(color: Colors.black54),
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: const TextStyle(color: Colors.black54),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  icon,
                  color: Colors.black54,
                ),
              ],
            ),
    );
  }
}
