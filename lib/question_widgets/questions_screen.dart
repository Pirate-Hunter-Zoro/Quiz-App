import 'package:flutter/material.dart';
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
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(questions[questionIdx].text),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            questionIdx,
            0,
            switchScreen,
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            questionIdx,
            1,
            switchScreen,
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            questionIdx,
            2,
            switchScreen,
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            questionIdx,
            3,
            switchScreen,
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
