import 'package:flutter/material.dart';
import 'package:untitled/quiz.dart';
import 'package:untitled/result.dart';

import './question.dart';
import './answer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

final _questi = const [ // in here they give the name to the array
  {'question': 'whats your name',
    'answer':[
      {'text':'derek','score': 19},
{'text':'david' ,'score': 11},
      {'text':'daniel' ,'score': 3}
    ],
  },
  {'question': 'whats favorite color',
    'answer':[{'text':'red' ,'score': 22},
{'text':'blue' ,'score': 10},
{'text':'black' ,'score':5}],
  },
  {'question': 'whats favorite musician',
    'answer':[{'text':'imagine dragons' ,'score': 17},
  {'text':'sia' ,'score':14},
  {'text':'yanni' ,'score':2}],
  },
];

class _MyAppState extends State<MyApp> {
 dynamic  questionIndex =0;
dynamic totalScore = 0;

void resetter(){
setState(() {
  questionIndex= 0;
  totalScore = 0;
});

}

  void _answerQuestion (dynamic  score){
    totalScore += score;
    questionIndex +=1;
setState(() {
   if (questionIndex < _questi.length){
    print('hello');
  }
  else{
    print('finished');
  }
});

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text('my name') ,),
        body:questionIndex < _questi.length?
        Quiz(ans:_answerQuestion, quest: _questi,
          questionIndex:questionIndex,): Result(Resulted: totalScore, resetter: resetter)
      )
    );
  }
}
