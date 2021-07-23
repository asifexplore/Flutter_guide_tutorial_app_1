import 'package:flutter/material.dart';
// ./ refers to look at the same file.
import './question.dart';
import './answer.dart';

void main() {
  // Written by Flutter | Material.dart
  // Runs the flutter app
  runApp(MyApp());
}

// This state will be rebuild when changes are required.
class MyApp extends StatefulWidget {
  // Overriding function inside flutter.
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// This state is persistant
// <MyApp> indicates that this state is linked with the above state.
class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  // BuildContext provided by Flutter.
  // build is a function, returns a widget.
  // Widget is provided by material.dart
  Widget build(BuildContext context) {
    // List of Strings
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favourite animal?'
    ];
    // Base setup to turn codes into apps
    // home = the page that will be displayed on the screen.
    return MaterialApp(
      home: Scaffold(
        // AppBar() provided by flutter
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          // Shows that it is a list of widgets.
          children: <Widget>[
            Question(
              questions[questionIndex],
            ),
            // Dash means it is depricated. Code still works.
            // Child is a widget
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
