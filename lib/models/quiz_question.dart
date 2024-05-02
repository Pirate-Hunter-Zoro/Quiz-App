class QuizQuestion {
  final String text;
  final List<String> answers;
  final String imagePath;
  final int correctAnswer;

  const QuizQuestion(this.text, this.answers, this.correctAnswer, this.imagePath);
}
