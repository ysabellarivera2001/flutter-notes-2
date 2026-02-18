import 'package:flutter/material.dart';

class QuizQuestions extends StatefulWidget {
  @override
  State<QuizQuestions> createState() {
    return _QuizQuestionsState();
  }
}

class _QuizQuestionsState extends State<QuizQuestions> {


  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          children: [
            Text(
              "Welcome to the Questions",
              style: TextStyle(
                fontSize: 35,
              )
              )
          ],
        )
      );
  }
}