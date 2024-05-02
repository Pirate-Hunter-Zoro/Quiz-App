import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  final void Function(int i) switchScreen;

  const ResultsScreen(this.switchScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/my-neighbor-totoro.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
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
    );
  }
}
