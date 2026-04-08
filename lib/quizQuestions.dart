import 'package:flutter/material.dart';
import 'package:_sample_proj2/data/questions.dart';
import 'package:_sample_proj2/answer_button.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({super.key});

  @override
  State<QuizQuestions> createState() {
    return _QuizQuestionsState();
  }
}

class _QuizQuestionsState extends State<QuizQuestions> {

  var currentQuestionIndex = 0;

  answerQuestion() {

    setState(
      () {
        currentQuestionIndex++;
      }
      
    );

    //currentQuestionIndex = currentQuestionIndex + 1;
    //currentQuestionIndex += 1;
    ///currentQuestionIndex++; are all the same, but the setState() is 
    ///needed to trigger a rebuild of the widget with the new question index
  }
  
  @override
  Widget build(BuildContext context) {

    //final currentQuestion = questions[0]; 
    //this will access what we imported from questions.dart, and 
    //the [0] will access the first question in the list of questions
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text
            ),
            SizedBox(
              height: 30,
            ),
            //this is the static version without the AnswerButton widget, for reference
            /*
            AnswerButton(currentQuestion.answers[0], (){}),
            AnswerButton(currentQuestion.answers[1], (){}),
            AnswerButton(currentQuestion.answers[2], (){}),
            AnswerButton(currentQuestion.answers[3], (){}),
            */ 
            ...currentQuestion.answers.map((answers) {
              return AnswerButton(answers, answerQuestion);
            })
          ]
        ),
      ),
    );
  }
}


//this is the static version without the AnswerButton widget, for reference
/*
SizedBox(
  height: 30,
),
ElevatedButton(
  onPressed: () {}, 
  child: Text(
    currentQuestion.answers[0]
  )
),
ElevatedButton(
  onPressed: () {}, 
  child: Text(
    currentQuestion.answers[1]
  )
),
ElevatedButton(
  onPressed: () {}, 
  child: Text(
    currentQuestion.answers[2]
  )
),
ElevatedButton(
  onPressed: () {}, 
  child: Text(
    currentQuestion.answers[3]
  )
),
]
),
),
)
*/