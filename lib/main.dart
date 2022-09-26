import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void testNgab() {
    print("lmao");
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
          padding: EdgeInsets.all(30),
          child: Column(children: [
            Text("Anggap aja ini something"),
            ElevatedButton(
                onPressed: testNgab,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.question_answer), Text("Answer one")],
                )),
            ElevatedButton(
                onPressed: testNgab,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Icon(Icons.question_answer), Text("Answer two")],
                )),
            ElevatedButton(
                onPressed: testNgab,
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
