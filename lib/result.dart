import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;

  Result(this.score);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Your score: ' + score.toString()),
    );
  }
}
