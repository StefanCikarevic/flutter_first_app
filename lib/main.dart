// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'Whats your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 2}
      ]
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 12},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 10}
      ]
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 5},
        {'text': 'Ivan', 'score': 6},
        {'text': 'Mark', 'score': 11},
        {'text': 'Jon', 'score': 9}
      ]
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: questionIndex < questions.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questions: questions,
                  questionIndex: questionIndex)
              : Result(totalScore)),
    );
  }
}
