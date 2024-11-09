import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color(0xff364860),
      appBar: AppBar(
        title: const Text("Score bar"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ScoreCard(
                title: "My score in Flutter",
              ),
              SizedBox(
                height: 20,
              ),
              ScoreCard(
                title: "My score in Dart",
              ),
              SizedBox(
                height: 20,
              ),
              ScoreCard(
                title: "My score in React",
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}

class ScoreCard extends StatefulWidget {
  final String title;

  const ScoreCard({super.key, required this.title});

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  int score = 0;

  void incrementScore() {
    setState(() {
      if (score < 10) score++;
    });
  }

  void decrementScore() {
    setState(() {
      if (score > 0) score--;
    });
  }

  Color _getProgressBarColor() {
    if (score <= 2) {
      return const Color.fromARGB(255, 168, 232, 243)!;
    } else if (score <= 4) {
      return const Color.fromARGB(255, 82, 226, 207)!;
    } else if (score <= 6) {
      return const Color.fromARGB(255, 67, 241, 175)!;
    } else if (score <= 8) {
      return const Color.fromARGB(255, 41, 219, 115)!;
    } else {
      return const Color.fromARGB(255, 8, 241, 98)!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(255, 17, 16, 16),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: decrementScore,
                    icon: const Icon(Icons.remove),
                  ),
                  IconButton(
                    onPressed: incrementScore,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                  ),
                  AnimatedContainer(
                    height: 50,
                    // Set width dynamically: This will use the full width of the container for the progress bar
                    width: MediaQuery.of(context).size.width *
                        (score / 10), // Dynamically adjust the width
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                          _getProgressBarColor(), // Color changes based on score
                    ),
                    duration:
                        const Duration(milliseconds: 300), // Smooth animation
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
