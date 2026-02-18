import 'package:_sample_proj2/quizQuestions.dart';
import 'package:flutter/material.dart';
import 'package:_sample_proj2/startScreen.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  Widget? activeScreen;
  
  @override
  void initState() {
    super.initState();
    activeScreen = startScreen();
  }

  void ChangeScreen() {
    setState(() {
      activeScreen = QuizQuestions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}