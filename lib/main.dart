import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //MyApp({Key? key}) : super(key: key);
  @override
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite color?",
      'What\s your favourite animal?'
    ]; //list of questions
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.brown[400],
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            Answer(),
            Answer(),
            Answer(),
            ],
        ),
      ),
    );
  }
}
