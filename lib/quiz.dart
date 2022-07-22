import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int indexQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.indexQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[indexQuestion]['questionText'] as String,
      ),
      // ignore: sdk_version_ui_as_code
      ...(questions[indexQuestion]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => answerQuestion(answer['score']), answer['text'] as String);
      }).toList()
    ]);
  }
}
