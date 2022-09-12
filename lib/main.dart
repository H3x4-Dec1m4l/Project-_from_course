
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

main() => runApp(questionApp());

class _questionAppState extends State<questionApp> {
var _selectedQuestion = 0;
var _totalnote = 0;

final List<Map<String, Object>> _question = const [
      {
        'Texto': 'Qual é seu Anime favorito?',
      'Resposta': [
        {'text': 'Naruto', 'grade': 10},
        {'text': 'DGZ', 'grade': 3},
        {'text': 'Bleach', 'grade': 8},
        {'text': 'Tokyo Ghoul', 'grade': 6},
      ]
      },
      {
        'Texto': 'qual é seu Personagem favorito?',
      'Resposta': [
        {'text': 'Hinata', 'grade': 10},
        {'text': 'Buma', 'grade': 5},
        {'text': 'Ioruichi', 'grade': 9},
        {'text': 'touka', 'grade': 7},
      ]
      },
      {
        'Texto': 'Qual Sua cor favorita?',
      'Resposta': [
        {'text': 'Preto', 'grade': 10},
        {'text': 'Vermelho', 'grade': 7},
        {'text': 'Azul', 'grade': 5},
        {'text': 'Rosa', 'grade': 4},
      ]
      }
    ];

    void _answer(int note){
      if(haveQuestionSelected){
      setState(() {
        _selectedQuestion++;
        _totalnote += note;
        });

        print(_totalnote);
      }
      
    }
      
   bool get haveQuestionSelected {
    return _selectedQuestion < _question.length;
  }


    @override 
  Widget build(BuildContext context){
    



return MaterialApp(
  home: Scaffold( 
    appBar: AppBar(
      title: Text ('perguntas'),
    ),
    body: haveQuestionSelected ? Quiz(
      answer: _answer,
      selectedQuestions: _selectedQuestion,
      questions: _question,
    ):Result('Resultado das perguntas selecionadas') ,
    
  
  )
  );
  }
}

class questionApp extends StatefulWidget{
  
   _questionAppState createState(){
    return  _questionAppState(); 
   }

  
  

} 