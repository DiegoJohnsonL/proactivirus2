class Question {
  Question({this.question, this.answers, this.correctAnswerIndex});

  String question;
  List<String> answers;
  int correctAnswerIndex;
  int chosenAnswerIndex;
}
