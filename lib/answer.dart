import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: selectHandler,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Icon(Icons.question_answer), Text(answerText)],
          )),
    );
  }
}
