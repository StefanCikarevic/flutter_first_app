// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion (){
    print('Answer chosen!');
  }


  @override
  Widget build(BuildContext context) {
    var questions = ['Whats your favorite color?','Whats your favorite animal?']
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: <Widget>[
          Text('The Question!'),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 3'), onPressed: answerQuedstion)
        ]),
      ),
    );
  }
}