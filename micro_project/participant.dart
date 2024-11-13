import 'question.dart';

class Participant {
  String firstName;
  String lastName;
  int score = 0;
  List<Duration> answerTimes = [];
  List<bool> correctAnswers = [];

  Participant(this.firstName, this.lastName);

  void answerQuestion(
      Question question, List<int> selectedAnswers, Duration answerTime) {
    bool isCorrect = question.checkAnswer(selectedAnswers);
    if (isCorrect) {
      score++;
    }
    correctAnswers.add(isCorrect);
    answerTimes.add(answerTime);
  }
}
