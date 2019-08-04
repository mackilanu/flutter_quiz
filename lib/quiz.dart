import 'package:flutter/material.dart';
import 'package:course1/question.dart';
import 'package:course1/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(this.answerQuestion, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(questions[questionIndex]['questionText']),
          //... takes the list and "pastes" it to the parent list.
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((currentAnswer) {
            return Answer(() => answerQuestion(currentAnswer['score']), currentAnswer['text']);
          }).toList(),
        ],
      ),
    );
  }
}
