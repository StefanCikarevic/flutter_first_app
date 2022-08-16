// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    print(questionIndex);
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whats your favorite color?',
      'Whats your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: <Widget>[
          Text(questions.elementAt(questionIndex)),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
          RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {print('Answer 3 chosen!')}),
        ]),
      ),
    );
  }
}
