import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/question_widgets/answer_button.dart';

class QuestionsScreen extends StatelessWidget {
  final int questionIdx;
  final void Function(int i) switchScreen;

  const QuestionsScreen(
    this.questionIdx,
    this.switchScreen, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            questions[questionIdx].question,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...questions[questionIdx].getShuffledAnswers().map(
                (answer) => AnswerButton(
                  questionIdx,
                  answer,
                  switchScreen,
                ),
              ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            questions[questionIdx].imagePath,
            width: 300,
          ),
        ],
      ),
    );
  }
}
