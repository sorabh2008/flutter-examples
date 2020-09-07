import 'package:flutter/widgets.dart';
import 'package:flutter_app/answer.dart';
import 'package:flutter_app/question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;
  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Question(questions[questionIndex]["question"]),
        ...(getAnswerWidgets().map((answer) {
          return Answer(answer, answerQuestion);
        })).toList()
      ],
    );
  }

  List<String> getAnswerWidgets() {
    var answerArr = List<String>();
    getAnswerMap(questions).forEach((element) {
      answerArr.add(element["text"]);
    });
    return answerArr;
  }

  List<Map<String, Object>> getAnswerMap(questions) {
    return questions[questionIndex]["answers"] as List<Object>;
  }
}
