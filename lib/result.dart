import 'package:flutter/material.dart';

class Result extends StatelessWidget {
final dynamic Resulted;
final  resetter;
Result({required this.Resulted, required this.resetter });

String get resultPhrase{ // getter another thing thats strange to me
String resultText ;
  if(Resulted <=53){
  resultText =' super man';
  }
  else if ( Resulted <=37 ){
   resultText = 'you have improved';
  }
  else if ( Resulted <=20 ){
    resultText = 'you don de try';
  }
else{
   resultText = 'you are here';
  }
  return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text( resultPhrase,
            style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold ),),
          FlatButton(child: Text('restart button '),
              onPressed: resetter,
          )

        ],
      ),
    );
  }
}
