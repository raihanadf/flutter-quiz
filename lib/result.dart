import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result({@required this.totalScore});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Scoremu: " + totalScore.toString(), style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),));
  }
}
