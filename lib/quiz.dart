import 'package:flutter/material.dart';
import 'package:untitled/question.dart';

import 'answer.dart';


class Quiz extends StatelessWidget {
 final dynamic quest;
  final dynamic questionIndex;
  final Function ans;
Quiz({required this.quest, required this.ans, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
    Question(
   questionText:  quest[questionIndex]['question'],
    ),
    ...(quest[questionIndex]['answer']as List<Map<String, Object>>).map((e) {
    return Answer(AnsText: e['text'], AnswerQuestion: ()=> ans( e['score']),);
    }).toList()]); //added to this learn this mapping very welll it looks confusing initially
  }// what i think is that they are mapping from list that has another map
}