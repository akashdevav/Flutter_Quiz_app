//This class contains the "lift_state_up functionality" ie. To change the screen_pages based on the button function.

import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/front_page.dart';
import 'package:quiz_app/quiz_screen.dart';
import 'package:quiz_app/result_screen.dart';

class Background extends StatefulWidget {
  const Background({super.key});
  @override
  State<Background> createState() {
    return _BackgroundState();
  }
}
class _BackgroundState extends State<Background> {
  List<String> selectAnswer = []; //an empty list to store the selected answer
  var activeScreen = 'home_page';

//the changescreen function can contains conditional properties that has to be triggered.
  void changeScreen() {
    setState(() {
      activeScreen = 'quiz_page';
    });
  }
  //this function is used to store or append the selected answes in quiz screen/page. 
  void storeAnswers(String answer) {
    selectAnswer.add(answer);
    if (selectAnswer.length == questions.length) {
      setState(() {
        //selectAnswer = [];
        activeScreen = 'result_page';
      });
    }
  }

  void requiz() {
    setState(() {
      activeScreen = 'result_page';
      selectAnswer = [];
    });
  }

  @override
  Widget build(context) {
    Widget currentScreen = FrontLogo(changeScreen);
    //the below condition is used to change the state ie. if condition met it can change the page to the "quizscreen".
    if(activeScreen == 'quiz_page') {
      currentScreen = QuizScreen(onSelectAnswer: storeAnswers,);
    }
    
    if(activeScreen == 'result_page') {
      currentScreen = ResultScreen(reQuiz: changeScreen, chosenAnswer: selectAnswer,);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter quiz app'),
          backgroundColor: const Color.fromARGB(255, 42, 89, 122),
          toolbarHeight: 45.0,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Container(
            alignment: AlignmentDirectional.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 247, 236, 139),
                  Color.fromARGB(255, 175, 158, 5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: currentScreen,
          ),
        ),
      ),
    );
  }
}
