import 'package:flutter/material.dart';
import 'package:task/const.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function next;

  const Answer(this.answerText, this.next);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
          color: Constants.skyColor(),
          textColor: Colors.white,
          child: Text(answerText , style: TextStyle(fontSize: 16),),
          onPressed: next,
          )
    );
  }
}
