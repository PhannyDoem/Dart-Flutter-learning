import 'package:flutter/material.dart';
import 'package:week7/model/quiz.dart';
import 'package:week7/widgets/app_button.dart';


class WelcomeScreen extends StatelessWidget {
  final Quiz quiz;
  final VoidCallback onStart;

  const WelcomeScreen({super.key, required this.quiz, required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/quiz-logo.png',
              width: 350,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Crazy Quizz',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            AppButton(
              "Start Quiz",
              onTap: onStart,
              icon: Icons.arrow_forward,
            )
          ],
        ),
      ),
    );
  }
}
