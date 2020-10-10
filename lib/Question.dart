class QuizQuestions {
  String _Question = "";
  var _Options = [];

  getQuetion() {
    return _Question;
  }

  setQuestion(question) {
    _Question = question;
  }

  getOptions() {
    return _Options;
  }

  setOptions(options) {
    _Options = options;
  }
}
