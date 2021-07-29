import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = "You did it";
    if (resultScore <= 8) {
      resultText = "You are awesome!";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likeable!";
    } else {
      resultText = 'You are Strange.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz'))
    ]));
  }
}
