import 'package:flutter/material.dart';



class Answer extends StatelessWidget {
  final  AnswerQuestion;
  final dynamic AnsText;
  Answer({ required this.AnswerQuestion, required this.AnsText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.yellow,
        child: Text(AnsText),
        onPressed:AnswerQuestion,
      ),
    );
  }
}
