import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key? key}) : super(key: key);

  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.brown, //change background color of button
              onPrimary: Colors.white70, //change text color of button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              )),
          /*style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.brown)),*/

          onPressed: selectHandler,
          child: Text(answerText)),
      /* RaisedButton(
          color: Colors.grey, child: Text('Answer 1'), onPressed: null),*/
    );
  }
}
