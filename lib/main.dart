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
    //The object questions stores the text for the questions as well as their required answers
    var questions = [
      {
        'questionText': "What's your favourite color?",
        'answers': ['Black', 'White', 'Red', 'Blue', 'Green'],
      },
      {
        'questionText': 'What\'s your favourite animal',
        'answers': ['Bear', 'Zebra', 'Rabbit', 'Lion'],
      },
      {
        'questionText': "What's your favourite flower?",
        'answers': ['Jasmin', 'Rose', 'Lotus'],
      },
    ]; //list of maps
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.brown[400],
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
