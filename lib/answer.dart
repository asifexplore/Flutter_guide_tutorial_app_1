import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Obtain Function or Function Pointer.
  final Function selectHandler;
  String answerText;
  Answer(
    this.selectHandler,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        color: Colors.blue,
      ),
    );
  }
}
