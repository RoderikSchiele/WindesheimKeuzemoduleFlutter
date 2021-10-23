import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'you did it';
    if (resultScore <= 8) {
      resultText = 'You are a good person';
    } else if (resultScore <= 12) {
      resultText = 'You are naughty';
    } else if (resultScore <= 16) {
      resultText = 'you are not a good person';
    } else {
      resultText = 'you are from hell';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            'Restart quiz'
            ),
            textColor: Colors.blue, 
          onPressed: resetHandler)
      ],
    ));
  }
}
