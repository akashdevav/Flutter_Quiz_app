import 'package:flutter/material.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/data/questions.dart';

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
    final currentquestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentquestion.text),
          const SizedBox(
            height: 30,
          ),
          //Here, I use map to store the existing list into new List as value of Item.
          //And ... (trible Dot) specifies splitting method or dart build-in key word used to consider as a single list of value separated by a comma.
          //If we don'n use the ...(trible Dot) ie. splitted method, the map is consider as "nested List" so it through an error.
          ...currentquestion.answers.map(
            (item) {
              return Column(
                children: [
                  AnswerButton(ontap: () {}, answer: item),
                  const SizedBox(height: 10,)
                ],
              );
            },
          ),//to minimise the code Duplicates we move on to the above "map() method"
          
          // AnswerButton (answer: currentquestion.answers[0], ontap: () {}),
          // const SizedBox(height: 10,),
          // AnswerButton (answer: currentquestion.answers[1], ontap: () {}),
          // const SizedBox(height: 10,),
          // AnswerButton (answer: currentquestion.answers[2], ontap: () {}),
          // const SizedBox(height: 10,),
          // AnswerButton (answer: currentquestion.answers[3], ontap: () {}),
        ],
      ),
    );
  }
}
