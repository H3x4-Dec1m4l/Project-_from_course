import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String text;
  String answerSelected;
  Result(this.text, {this.answerSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 22
        ),
        textAlign: TextAlign.center,
      ),
    );
    
  }
}