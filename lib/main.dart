import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';
import 'question.dart';
import 'answer.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questions = [
    {
      'questionText': "Kamu mau gak jadi pacarku?",
      'answers': ['Ya', 'Boleh lah', 'Mauuu']
    },
    {
      'questionText': "Siapa presiden nomor satu?",
      'answers': ['jokowiw', 'megawati', 'suharto']
    },
    {
      'questionText': "Kuliah penting atau tidak?",
      'answers': ['lumayan', 'lumayan gak penting', 'b aja']
    },
  ];
  void _answerQuestion() {
    setState(() {
      if (_questionIndex < _questions.length) _questionIndex += 1;
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
        body: _questionIndex < _questions.length
            ? Quiz(questions: _questions, answerQuestion: _answerQuestion, questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
