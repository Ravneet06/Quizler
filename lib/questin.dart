import 'package:flutter/material.dart';

class Ques extends StatelessWidget {
  final String QuesText;

  Ques(this.QuesText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(QuesText,
            style: TextStyle(fontSize: 28), textAlign: TextAlign.center));
  }
}
