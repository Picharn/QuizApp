class QuizModel {
  String question;
  List<String> answers;

  QuizModel(this.question, this.answers);

  List<String> getShuffledAnswers(){
    final getShuffledAnswers = List.of(answers);
    getShuffledAnswers.shuffle();
    return getShuffledAnswers;
  }
}
