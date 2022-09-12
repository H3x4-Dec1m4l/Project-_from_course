import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


class Quiz extends StatelessWidget {
 final List<Map<String, Object>> questions; 
 final int selectedQuestions;
 final void Function(int) answer; 
 Quiz({@required this.questions, 
    @required this.selectedQuestions, 
    @required this.answer,
  });

   bool get haveQuestionSelected {
    return selectedQuestions < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answer2 =  haveQuestionSelected ? 
questions[selectedQuestions] ['Resposta'] : null ;
    return Column(
      children: [
        Question(questions[selectedQuestions] ['Texto']),
       ...answer2.map((resp) => Answer(resp['text'], () => answer(resp['grade']) )).toList(),
        
      ],
      );
  }
}