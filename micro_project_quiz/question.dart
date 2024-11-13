import 'answer.dart';

abstract class Question {
  String title;
  List<Answer> answers;

  Question(this.title, this.answers);

  bool checkAnswer(List<int> selectedAnswers);
  void display(int questionNumber, {int? remainingTime});
}
