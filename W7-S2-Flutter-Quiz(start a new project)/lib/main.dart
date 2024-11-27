import 'package:flutter/material.dart';
import 'quiz_app.dart';
import 'model/quiz.dart';

void main() {
  Question q1 = const Question(
      title: "What is the best programming language in the 2024 survey?",
      possibleAnswers: ["Java", "Python", 'Rust'],
      goodChoice: 'Rust');
  Question q2 = const Question(
      title: "What is the 5 x 4?",
      possibleAnswers: ["21", "20", '24'],
      goodChoice: '20');
  Question q3 = const Question(
      title: "What is the capital city of Cambodia?",
      possibleAnswers: ["Phnom Penh", "Siem Reap", 'Takeo'],
      goodChoice: 'Phnom Penh');
  Question q4 = const Question(
      title: "What is the capital of France?",
      possibleAnswers: ['Paris', 'London', 'Berlin'],
      goodChoice: 'Paris');

  List<Question> myQuestions = [q1, q2, q3, q4];
  Quiz myQuiz = Quiz(title: "Crazy Quizz", questions: myQuestions);

  runApp(QuizApp(myQuiz));
}


