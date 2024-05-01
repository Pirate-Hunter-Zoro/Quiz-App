import 'package:flutter/material.dart';
import 'package:quizz_app/models/quiz_question.dart';

class QuestionWidget extends StatelessWidget {
  final QuizQuestion question;

  const QuestionWidget(
    this.question, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(question.text),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(question.answers[0]),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(question.answers[1]),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(question.answers[2]),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(question.answers[3]),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            question.imagePath,
            width: 300,
          ),
        ],
      ),
    );
  }
}
