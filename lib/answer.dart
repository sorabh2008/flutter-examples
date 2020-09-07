import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;
  Answer(this.answerText, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          onPressed: this.selectHandler,
          child: Text(this.answerText),
          color: Colors.blue[400],
          splashColor: Colors.blue,
        ));
  }
}
