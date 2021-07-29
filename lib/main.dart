import 'package:flutter/material.dart';
// ./ refers to look at the same file.
import './quiz.dart';
import './Result.dart';

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
  // List of Strings
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elepahant', 'score': 3},
        {'text': 'Lion', 'score': 1},
      ],
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Asif', 'score': 5},
        {'text': 'Josh', 'score': 3},
        {'text': 'Kelvin', 'score': 1},
      ],
    }
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more questions!');
    }
  }

  // BuildContext provided by Flutter.
  // build is a function, returns a widget.
  // Widget is provided by material.dart
  Widget build(BuildContext context) {
    // Base setup to turn codes into apps
    // home = the page that will be displayed on the screen.
    return MaterialApp(
      home: Scaffold(
        // AppBar() provided by flutter
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
