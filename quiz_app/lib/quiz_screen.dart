import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('quiz questions...'),
          const SizedBox(
            height: 30,
          ),
          AnswerButton (answer: 'answer 1', ontap: () {}),
          const SizedBox(height: 10,),
          AnswerButton (answer: 'answer 2', ontap: () {}),
          const SizedBox(height: 10,),
          AnswerButton (answer: 'answer 3', ontap: () {}),
        ],
      ),
    );
  }
}
