import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/quiz_question.dart';

class QuestionSummary extends StatelessWidget {
  final QuizQuestion question;

  const QuestionSummary(
    this.question, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question.question,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Your answer: ${question.enteredAnswer}",
          style: TextStyle(
            fontSize: 15,
            color: question.enteredAnswer == question.correctAnswer
                ? Colors.green
                : Colors.red,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Correct answer: ${question.correctAnswer}",
          style: const TextStyle(
            fontSize: 15,
            color: Colors.green,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
