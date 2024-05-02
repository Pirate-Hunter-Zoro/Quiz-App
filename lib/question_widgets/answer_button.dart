import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';

class AnswerButton extends StatelessWidget {
  final int questionIdx;
  final int answerIdx;
  final void Function(int i) switchScreen;

  const AnswerButton(this.questionIdx, this.answerIdx, this.switchScreen,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Record if answer is correct
        if (answerIdx == questions[questionIdx].correctAnswer) {
          correct++;
        }
        switchScreen(questionIdx + 1);
      },
      child: Text(questions[questionIdx].answers[answerIdx]),
    );
  }
}
