import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _totalScore = 0;
  var _questionIndex = 0;
  var _questions = [
    {
      'questionText': "Kamu mau gak jadi pacarku?",
      'answers': [
        {'text': 'Ya', 'score': 5},
        {'text': 'Boleh lah', 'score': 15},
        {'text': 'Mauuu', 'score': 100},
      ]
    },
    {
      'questionText': "Siapa presiden nomor satu?",
      'answers': [
        {'text': 'Megawati', 'score': 5},
        {'text': 'jokowi', 'score': 15},
        {'text': 'ur mom', 'score': 100},
      ]
    },
    {
      'questionText': "Kuliah penting atau tidak?",
      'answers': [
        {'text': 'lumayan', 'score': 5},
        {'text': 'lumayan gak penting', 'score': 999},
        {'text': 'b aja', 'score': 100},
      ]
    },
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
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
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
