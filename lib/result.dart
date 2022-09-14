import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int pontuation;
  Result(this.pontuation);

String get resultPhrase{
  if(pontuation <= 9){
    return 'Tu é ruim hein';
  }else if(pontuation <=15 ){
    return 'É, até vai';
  }else if(pontuation <= 18){
    return 'É bomzinho até';
  }else if(pontuation <=29){
    return 'Você é foda';
  }else{
    return 'Você é oficialmente o maior otaku del mundo';
  }
}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Text(
       resultPhrase,
        style: TextStyle(
          fontSize: 22
        ),
        textAlign: TextAlign.center,
      ),
    );
    
  }
}