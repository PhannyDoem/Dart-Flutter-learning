

import 'package:week7/model/submission.dart';

class Quiz {
  final String title;
  final List<Question> questions;

  Quiz({required this.title, required this.questions});
}

class Question {
  final String title;
  final List<String> possibleAnswers;
  final String goodChoice;

  const Question(
      {required this.title,
      required this.possibleAnswers,
      required this.goodChoice});

  bool isCorrect(Answer answer) {
    return goodChoice == answer.userChoice;
  }
}
