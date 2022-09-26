import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    "Kamu mau gak jadi pacarku?",
    "Siapa presiden nomor satu?",
    "Kuliah penting atau tidak?",
  ];
  void _answerQuestion() {
    setState(() {
      if (_questionIndex < questions.length - 1) _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ahihaiahi"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ]),
        ),
      ),
    );
  }
}
