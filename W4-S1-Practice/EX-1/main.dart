import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("My Hobbies"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        decoration: const BoxDecoration(color: Color(0xff9E9E9E)),
        child: const Column(
          children: [
            HobbyCard(
              title: "Travelling",
              icon: Icons.travel_explore,
              backgroundColor: Color(0xff4CAF50),
            ),
            HobbyCard(
              title: "Skating",
              icon: Icons.skateboarding,
              backgroundColor: Color(0xff607D8B),
            ),
            HobbyCard(
              title: "Favorite",
              icon: Icons.favorite,
              backgroundColor: Colors.red,
            ),
          ],
        ),
      ),
    ),
  ));
}

class HobbyCard extends StatelessWidget {
  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.backgroundColor = Colors.blue,
  });

  final String title;
  final IconData icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
