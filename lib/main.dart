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
      if (_questionIndex < questions.length - 1) _questionIndex += 1;
      print(questions[_questionIndex]['answers']);
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
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))
                .toList(),
          ]),
        ),
      ),
    );
  }
}
