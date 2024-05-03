import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/question_widgets/question_identifier.dart';
import 'package:quizz_app/question_widgets/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  final void Function(int i) switchScreen;

  const ResultsScreen(this.switchScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 700,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/my-neighbor-totoro.png',
              width: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'You got $correct questions correct!',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ...questions.map(
              (question) => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionIdentifier(
                    question.questionNumber,
                    question.enteredAnswer == question.correctAnswer,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: QuestionSummary(question),
                  ),
                ],
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                correct = 0;
                switchScreen(4);
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right),
              label: const Text(
                'Return Home',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
