import 'package:flutter/material.dart';
import 'package:week7/model/quiz.dart';
import 'package:week7/model/submission.dart';


class ResultItem extends StatelessWidget {
  final Question question;
  final Answer? userAnswer;
  final String correctAnswer;
  final int questionIndex;

  const ResultItem({
    super.key,
    required this.question,
    this.userAnswer,
    required this.correctAnswer,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    // Determine if the user answer is correct
    bool isCorrect = userAnswer?.userChoice == correctAnswer;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: isCorrect ? const Color(0xff92D050) : Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '$questionIndex',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: question.possibleAnswers.map((choice) {
              bool isChoiceCorrect = choice == correctAnswer;
              bool isUserChoice = choice == userAnswer?.userChoice;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      isUserChoice ? Icons.check : null,
                    ),
                    const SizedBox(width: 8),
                    Text(choice,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isUserChoice
                              ? (isChoiceCorrect
                                  ? const Color(0xff92D050)
                                  : Colors.black)
                              : (isChoiceCorrect ? Colors.red : Colors.black),
                        )),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
