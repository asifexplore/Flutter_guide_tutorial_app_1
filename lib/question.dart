import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // Value won't change after initialization.
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // infinity => container gets as much width and height as possible
      width: double.infinity,
      // margin => spacing around container
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
