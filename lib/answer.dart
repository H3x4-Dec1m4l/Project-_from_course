

import 'package:flutter/material.dart';
class Answer extends StatelessWidget{
 String text = '';
 final void Function() whenSelected;
Answer (this.text, this.whenSelected);

@override

Widget build(BuildContext context){
 return  Container(
  width: double.infinity,
   child:  RaisedButton( 
      
          textColor: Colors.white,
          
          color: Colors.blue,
            child: Text(text), 
            
            onPressed: whenSelected,
    ),
 );
  

}
}