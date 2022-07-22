// ignore_for_file: deprecated_member_use, avoid_print
//######################################################################################

//PLANET QUIZ APP//

//#####################################################################################
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// import './question.dart';
// import './answer.dart';
// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var indexQuestion = 0;
  int totalscore = 0;
  final questions = [
    {
      'questionText': "How many planets are there in our solar system?",
      'answer': [
        {'text': "9", 'score': 10},
        {'text': "8", 'score': 0},
        {'text': "5", 'score': 0},
        {'text': "12", 'score': 0},
      ],
    },
    {
      'questionText':
          "To weigh roughly two-thirds less than what you do on Earth, which planet would you be on?",
      'answer': [
        {'text': "Mercury", 'score': 0},
        {'text': "Venus", 'score': 0},
        {'text': "Mars", 'score': 10},
        {'text': "Jupiter", 'score': 0},
      ],
    },
    {
      'questionText':
          "How long does it take for light from the Sun to reach Earth",
      'answer': [
        {'text': "5", 'score': 0},
        {'text': "8", 'score': 10},
        {'text': "12", 'score': 0},
        {'text': "9", 'score': 0},
      ],
    },
  ];

  void answerQuestion(int score) {
    totalscore += score;
    setState(() {
      indexQuestion += 1;
    });

    if (indexQuestion < questions.length) {
      print("More Questions avaialable");
    }
    // print("Answer Tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Planet Quiz"),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: indexQuestion < questions.length
              ? Quiz(
                  questions: questions,
                  answerQuestion: answerQuestion,
                  indexQuestion: indexQuestion)
              : Result()),
    );
  }
}
