import 'question.dart';
import 'answer.dart';

class SingleChoice extends Question {
  SingleChoice(String title, List<Answer> answers) : super(title, answers);

  @override
  bool checkAnswer(List<int> selectedAnswers) {
    if (selectedAnswers.length != 1) return false;
    return answers[selectedAnswers[0]].isCorrect;
  }

  @override
  void display(int questionNumber, {int? remainingTime}) {
    print('Question $questionNumber: $title');
    if (remainingTime != null) {
      print('Time Remaining: ${remainingTime.toString().padLeft(2, '0')}s');
    }
    for (var i = 0; i < answers.length; i++) {
      print('${String.fromCharCode(65 + i)}. ${answers[i].text}');
    }
    print('Select one answer');
  }
}
