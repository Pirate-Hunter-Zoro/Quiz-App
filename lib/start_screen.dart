import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function(int i) switchScreen;

  const StartScreen(this.switchScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/shonen-jump.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Let\'s test your anime taste!',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              switchScreen(0);
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right),
            label: const Text(
              'Start Quiz',
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
