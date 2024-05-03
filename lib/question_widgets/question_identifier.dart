import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionNumber;
  final bool correct;

  const QuestionIdentifier(this.questionNumber, this.correct, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: correct ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
      child: 
      Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(
            255,
            6,
            71,
            201,
          ),
        ),
      ),
    );
  }
}
