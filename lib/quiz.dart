import 'package:flutter/material.dart';
import 'package:quizz_app/question_widgets/questions_screen.dart';
import 'package:quizz_app/results_screen.dart';
import 'package:quizz_app/start_screen.dart';

const int numScreens = 5;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  int activeScreenIdx = 0;
  List<Widget> nextScreens = [];

  // The widget will rebuild accordingly
  void switchScreen(int i) {
    setState(() {
      activeScreenIdx = (i + 1) % numScreens;
    });
  }

  @override
  void initState() {
    nextScreens = [
      StartScreen(switchScreen),
      QuestionsScreen(0, switchScreen),
      QuestionsScreen(1, switchScreen),
      QuestionsScreen(2, switchScreen),
      ResultsScreen(switchScreen),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple, Colors.purpleAccent],
            ),
          ),
          child: nextScreens[
              activeScreenIdx], // Whatever that may be depending on if we have hit a button on the start screen or not
        ),
      ),
    );
  }
}
