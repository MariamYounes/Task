import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String questionText;

   Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
  
}