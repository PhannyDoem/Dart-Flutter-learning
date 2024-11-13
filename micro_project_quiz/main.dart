import 'quiz.dart';
import 'single_choice.dart';
import 'multiple_choice.dart';
import 'answer.dart';

void main() {
  var quiz = Quiz();

  quiz.addQuestion(SingleChoice("What is the capital of Cambodia?", [
    Answer("Phnam Penh", true),
    Answer("Takeo", false),
    Answer("Kandal", false),
    Answer("Kep", false)
  ]));

  quiz.addQuestion(MultipleChoice("How many of framwork in Java?", [
    Answer("Spring framework", true),
    Answer("3", true),
    Answer("4", false),
    Answer("Spring Boot", true)
  ]));
  quiz.start();
}
