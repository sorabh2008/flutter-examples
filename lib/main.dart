import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Welcome to flutter"),
            ),
            body: MyHomePage()));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  static const List<Map<String, Object>> questions = const [
    {
      "question": "What's your favourite color?",
      "answers": [
        {"text": "Blue", "score": 10},
        {"text": "Black", "score": 30},
        {"text": "Red", "score": 15},
        {"text": "White", "score": 20}
      ]
    },
    {
      "question": "What's your favourite movie?",
      "answers": [
        {"text": "Inception", "score": 10},
        {"text": "Harry potter", "score": 15},
        {"text": "Transformers", "score": 20},
        {"text": "Batman", "score": 30}
      ]
    },
    {
      "question": "What's your favourite band?",
      "answers": [
        {"text": "Metallica", "score": 10},
        {"text": "Linkin Park", "score": 20},
        {"text": "Pink floyd", "score": 30},
        {"text": "The black eyed peas", "score": 40}
      ]
    }
  ];
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _questionIndex < (questions.length)
          ? Quiz(_answerQuestion, questions, _questionIndex)
          : Result(),
    );
  }
}
