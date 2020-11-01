import 'package:flutter/material.dart';
import 'package:task/const.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final int totalScore;
  Result(this.resetQuiz, this.totalScore);

  String get resultPharse{
    String resultText;
    if(totalScore>=8){
      resultText="You are Awesome !";
    }else if(totalScore>=6){
      resultText="Pretty Likable !";
    }else{
      resultText="You must study !";
    }
    return resultText;
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:18.0),
      child: Center(
        child: Column(
          children: [
            Text("$resultPharse", style: TextStyle(fontSize: 30 , color: Constants.redColor()),),
            SizedBox(height: 50,),
            Text("$totalScore" , style: TextStyle(fontSize: 30),),
            SizedBox(height: 50,),
            FlatButton(onPressed: (){
              resetQuiz();
            }, child: Text("Restart Quiz" ,style: TextStyle(fontSize: 26),),)
          ],
        ),
      ),
    );
  }
}
