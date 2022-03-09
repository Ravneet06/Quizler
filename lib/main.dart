import 'package:flutter/material.dart';
import './questin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewApp(),
    );
  }
}

class NewApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewAppstate();
  }
}

class _NewAppstate extends State<NewApp> {
  var questionindex = 0;
  void value(int index) {
    setState(() {
      questionindex = index;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite food',
      'what\'s your favourite color.',
      'what\'s your favourite animal',
      'what\'s your favoutite sports',
    ];
    return Scaffold(
        appBar: AppBar(title: Text('Questionaire')),
        body: (Column(children: [
          Ques(questions[questionindex]),
          RaisedButton(
              child: Text('Option A'),
              onPressed: () {
                value(0);
              }),
          RaisedButton(
              child: Text('Option B'),
              onPressed: () {
                value(1);
              }),
          RaisedButton(
              child: Text('Option C'),
              onPressed: () {
                value(2);
              }),
          RaisedButton(
              child: Text('Option D'),
              onPressed: () {
                value(3);
              }),
        ])));
  }
}
