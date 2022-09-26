import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    "Kamu mau gak jadi pacarku?",
    "Siapa presiden nomor satu?",
    "Kuliah penting atau tidak?",
  ];
  void answerQuestion() {
    setState(() {
      if(questionIndex < questions.length - 1) questionIndex += 1;
    });
    print(questionIndex);
    print(questions.length);
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
            Text(questions[questionIndex]),
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
