import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result({@required this.totalScore, @required this.resetHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          "Scoremu: " + totalScore.toString(),
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        )),
        ElevatedButton(
            onPressed: () {
              this.resetHandler();
            },
            child: Text("Reset"))
      ],
    );
  }
}
