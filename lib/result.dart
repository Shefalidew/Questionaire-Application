import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likable!';
    } else {
      resultText = 'You are strange!';
    }
    return resultText;
  }

  Result(this.resultScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(resultPhrase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
        Container(
          alignment: Alignment.bottomCenter,
          child: FlatButton(
            onPressed: resetHandler,
            child: Text(
              'Reset Quiz?',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
