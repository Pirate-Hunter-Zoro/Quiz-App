import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';

class AnswerButton extends StatelessWidget {
  final int questionIdx;
  final String answer;
  final void Function(int i) switchScreen;

  const AnswerButton(this.questionIdx, this.answer, this.switchScreen,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 108, 0, 209),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onPressed: () {
        // Record if answer is correct
        if (answer == questions[questionIdx].correctAnswer) {
          correct++;
        }
        switchScreen(questionIdx + 1);
      },
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
