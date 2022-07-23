import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  // final Function resetQuiz;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore == 30) {
      resultText = "Knowledgable Person";
    } else if (resultScore == 20) {
      resultText = "Heya, Nerd";
    } else if (resultScore == 10) {
      resultText = "Knowledge is Sharing";
    } else {
      resultText = "Keep Phone Away";
    }
    return resultText;
  }

  // static const String hi = "hi";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          // color: Color.fromARGB(255, 192, 203, 212),
          padding: EdgeInsets.all(10),

          textColor: Colors.blue,
          onPressed: resetQuiz,
          child: Text(
            "Reset Quiz",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}
