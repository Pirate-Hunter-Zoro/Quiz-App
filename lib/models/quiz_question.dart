class QuizQuestion {
  final String question;
  final List<String> answers;
  final String imagePath;
  String correctAnswer = "";
  String enteredAnswer = "";
  final int questionNumber;

  QuizQuestion(
      this.question, this.answers, int correctAnswerIdx, this.questionNumber, this.imagePath) {
    correctAnswer = answers[correctAnswerIdx];
  }

  List<String> getShuffledAnswers() {
    List<String> shuffled = List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}
