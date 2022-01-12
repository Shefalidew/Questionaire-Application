import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.brown)),
          onPressed: null,
          child: Text("Answer 1")),
      /* RaisedButton(
          color: Colors.grey, child: Text('Answer 1'), onPressed: null),*/
    );
  }
}
