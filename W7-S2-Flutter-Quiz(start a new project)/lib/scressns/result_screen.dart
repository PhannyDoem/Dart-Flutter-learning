import 'package:flutter/material.dart';
import 'package:week7/model/quiz.dart';
import 'package:week7/model/submission.dart';
import 'package:week7/widgets/app_button.dart';
import 'package:week7/widgets/result_item.dart';


class ResultScreen extends StatelessWidget {
  final Submission submission;
  final VoidCallback onRestart; // Callback to restart the quiz
  final Quiz quiz; // Quiz passed to display results

  const ResultScreen({
    super.key,
    required this.submission,
    required this.onRestart,
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    int score = submission.getScore();
    int totalQuestions = quiz.questions.length;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $score on $totalQuestions !',
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: quiz.questions.length,
              itemBuilder: (context, index) {
                final question = quiz.questions[index];
                final userAnswer = submission.answers[question];

                return ResultItem(
                  question: question,
                  userAnswer: userAnswer,
                  correctAnswer: question.goodChoice,
                  questionIndex: index + 1,
                );
              },
            ),
          ),
          AppButton(
            "Restart Quiz",
            onTap: onRestart,
            icon: Icons.restart_alt,
          )
        ],
      ),
    );
  }
}
