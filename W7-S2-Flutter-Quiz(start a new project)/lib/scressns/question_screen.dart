import 'package:flutter/material.dart';
import 'package:week7/model/quiz.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final Function(String) onTap;

  const QuestionScreen({
    super.key,
    required this.question,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question.title,
              style: const TextStyle(color: Colors.white, fontSize: 35),
            ),
            const SizedBox(height: 20),
            for (String answer in question.possibleAnswers)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      onTap(answer);
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        backgroundColor: const Color(0xff64B5F6),
                        shadowColor: Colors.black),
                    child: Text(
                      answer,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
