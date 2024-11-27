

import 'package:week7/model/quiz.dart';

class Submission {
  Map<Question, Answer> answers = {};

  void addAnswer(Answer answer) {
    answers[answer.question] = answer;
  }

  void removeAnswers() {
    answers.clear();
  }

  int getScore() {
    int score = 0;
    for (Question q in answers.keys) {
      if (q.isCorrect(answers[q] as Answer)) {
        score++;
      }
    }
    return score;
  }

  Answer? getAnswerFor(Question questions) {
    return answers[questions];
  }
}

class Answer {
  final String userChoice;
  final Question question;

  Answer({required this.userChoice, required this.question});
}
