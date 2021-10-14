import 'package:flutter/material.dart';
import './question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _anwerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite color?",
      "What's your favourtie animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text("Anwer 1"),
              onPressed: _anwerQuestion,
            ),
            RaisedButton(
              child: Text("Anwer 2"),
              onPressed: () => print("You have chosen answer 2!"),
            ),
            RaisedButton(
              child: Text("Anwer 3"),
              onPressed: () {
                print("You have chosen answer 3!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
