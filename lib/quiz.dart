import 'package:_sample_proj2/quizQuestions.dart';
import 'package:flutter/material.dart';
import 'package:_sample_proj2/startScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

//  Widget? activeScreen;
  
//  @override
//  void initState() {
//    super.initState();
//    activeScreen = startScreen(ChangeScreen);
//  }

var activeScreen = 'start-screen'; //default value

  void ChangeScreen() {
    setState(() {
      activeScreen = 'quiz-screen'; //formerly QuizQuestions()
    });
  }

  @override
  Widget build(BuildContext context) {

    //a widget build is expecting a widget return value
    Widget? currentScreen = startScreen(ChangeScreen);

    if (activeScreen == 'quiz-screen') {
      currentScreen = QuizQuestions();
    }

    return MaterialApp(
      home: Scaffold(
        body: currentScreen, //formerly activeScreen
      ),
    );
  }
}