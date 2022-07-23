import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  // ignore: unused_field
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': "How many planets are there in our solar system?",
      'answers': [
        {'text': "9", 'score': 10},
        {'text': "8", 'score': 0},
        {'text': "5", 'score': 0},
        {'text': "12", 'score': 0},
      ],
    },
    {
      'questionText':
          "To weigh roughly two-thirds less than what you do on Earth, which planet would you be on?",
      'answers': [
        {'text': "Mercury", 'score': 0},
        {'text': "Venus", 'score': 0},
        {'text': "Mars", 'score': 10},
        {'text': "Jupiter", 'score': 0},
      ],
    },
    {
      'questionText':
          "How long does it take for light from the Sun to reach Earth",
      'answers': [
        {'text': "5", 'score': 0},
        {'text': "8", 'score': 10},
        {'text': "12", 'score': 0},
        {'text': "9", 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Planet Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
