import 'package:flutter/material.dart';
import 'package:task/screens/quiz.dart';
import 'package:task/screens/result.dart';
import 'package:task/screens/welcome.dart';
import 'package:task/widget/appbar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _questionIndex = 0;
  int totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Welcome()));
    });
  }  

  final List<Map<String, Object>> question = [
    {
      "questionText": "what is the capital of canada ?",
      'answers': [
        {'ans': 'Ottawa', 'score': 2},
        {'ans': 'Cairo', 'score': 0},
        {'ans': 'Canberra', 'score': 0},
        {'ans': 'Braseilia', 'score': 0},
      ]
    },
    {
      "questionText": "which one is the prime number ?",
      'answers': [
        {'ans': '20', 'score': 0},
        {'ans': '17', 'score': 2},
        {'ans': '99', 'score': 0},
        {'ans': '106', 'score': 0}
      ]
    },
    {
      "questionText": "Entomology is the science that studies ?",
      'answers': [
        {'ans': 'Behavior of human beings', 'score': 0},
        {'ans': 'Insects', 'score': 2},
        {'ans': 'The origin and history of technical', 'score': 0},
        {'ans': 'The formation of rocks', 'score': 0}
      ]
    },
    {
      "questionText": "	Eritrea, which became the 182nd member of the UN in 1993, is in the continent of ?",
      'answers': [
        {'ans': 'Asia', 'score': 0},
        {'ans': 'Europe', 'score': 0},
        {'ans': 'Australia', 'score': 0},
        {'ans': 'Afica', 'score': 2}
      ]
    },
    {
      "questionText": "Garampani sanctuary is located at ?",
      'answers': [
        {'ans': 'Junagarh, Gujarat', 'score': 0},
        {'ans': 'Diphu, Assam', 'score': 2},
        {'ans': 'Kohima, Nagaland', 'score': 0},
        {'ans': 'Gangtok, Sikkim', 'score': 0}
      ]
    },
  ];
  
  void answerQuestion(score) {
    totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print(totalScore);
  }

  @override
  void initState() {
    super.initState();
    question.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: appBar(),
        body: Container(
          child: _questionIndex < question.length
              ? Quiz(question, _questionIndex, answerQuestion)
              : Result(resetQuiz, totalScore),
        ),
      ),
    );
  }
}
