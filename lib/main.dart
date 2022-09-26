import 'package:flutter/material.dart';
import 'question.dart';

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
  void answerQuestion() {
    setState(() {
      if(_questionIndex < questions.length - 1) _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ahihaiahi"),),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
                onPressed: answerQuestion,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.question_answer), Text("Answer one")],
                )),
            ElevatedButton(
                onPressed: answerQuestion,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.question_answer), Text("Answer two")],
                )),
            ElevatedButton(
                onPressed: answerQuestion,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.question_answer), Text("Answer three")],
                ))
          ]),
        ),
      ),
    );
  }
}