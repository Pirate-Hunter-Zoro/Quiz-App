import 'package:quizz_app/models/quiz_question.dart';

int correct = 0;

List<QuizQuestion> questions = [
  QuizQuestion(
    'Who is the captain of the Straw Hat Pirates?',
    [
      'Roronoa Zoro',
      'Monkey D. Luffy',
      'Trafalgar D. Law',
      'Sabo',
    ],
    1,
    1,
    'assets/images/luffy.png',
  ),
  QuizQuestion(
    'Who is the captain of the Black Bulls?',
    [
      'Yami Sukehiro',
      'Mereoleona Vermillion',
      'Fuegolian Vermillion',
      'Zora Ideale',
    ],
    0,
    2,
    'assets/images/yami.png',
  ),
  QuizQuestion(
    'Which Miyazaki film was the best one?',
    [
      'Howl\'s Moving Castle',
      'Spirited Away',
      'Castle in the Sky',
      'Princess Mononoke'
    ],
    3,
    3,
    'assets/images/mononoke.png',
  ),
];
