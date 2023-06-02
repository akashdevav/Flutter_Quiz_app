import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answers.dart';
import 'package:quiz_app/data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.onSelectAnswer});

  final void Function(String answers) onSelectAnswer;
  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  var currentquestionIndex = 0;

  //this function is goes to increment the question index value to change the next question.
  void changequestionindex(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);  //Here, the selected answer is passes through the class constructor.
    setState(() {
      currentquestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {

    final currentquestion = questions[currentquestionIndex];
    
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(233, 0, 0, 0),
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 30,
            ),
            //Here, I use map to store the existing list into new List as value of Item to the particular button functions.
            //And ... (trible Dot) specifies splitting method or dart build-in key word used to consider as a single list of value separated by a comma.
            //If we don'n use the ...(trible Dot) ie. splitted method, the map is consider as "nested List" so it through an error.
            ...currentquestion.getShuffledAnswers().map(
              (item) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AnswerButton(ontap: () {
                      changequestionindex(item);    //Here, i collect the selected answers as a item and then pass it to the "changequestionIndex function".
                    }, answer: item),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                );
              },
            ), //to minimise the code Duplicates we move on to the above "map() method"

            // AnswerButton (answer: currentquestion.answers[0], ontap: () {}),
            // const SizedBox(height: 10,),
            // AnswerButton (answer: currentquestion.answers[1], ontap: () {}),
            // const SizedBox(height: 10,),
            // AnswerButton (answer: currentquestion.answers[2], ontap: () {}),
            // const SizedBox(height: 10,),
            // AnswerButton (answer: currentquestion.answers[3], ontap: () {}),
          ],
        ),
      ),
    );
  }
}
