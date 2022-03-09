import 'package:flutter/material.dart';
import './questin.dart';

void main() {
  runApp(NewApp());
}

class NewApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewAppstate();
  }
}

class _NewAppstate extends State<NewApp> {
  var questionindex = 0;
  void value() {
    setState(() {
      questionindex = questionindex + 1;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite food',
      'what\'s your favourite color.',
      'what\'s your favourite animal',
      'what\'s your favoutite sports',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Questionaire')),
          body: (Column(children: [
            Ques(questions[questionindex]),
            RaisedButton(child: Text('Option A'), onPressed: value),
            RaisedButton(child: Text('Option B'), onPressed: value),
            RaisedButton(child: Text('Option C'), onPressed: value),
            RaisedButton(child: Text('Option D'), onPressed: value),
          ]))),
    );
  }
}
