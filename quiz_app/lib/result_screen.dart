import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.reQuiz, required this.chosenAnswer});
  final void Function() reQuiz;
  final List<String> chosenAnswer;

  //New method to store the questions and right answers in the result page.
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'quiz_question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final SummaryData = getSummaryData();
    final numtotalQuestion = questions.length;
    final numcorrectAnswer = getSummaryData().where(
      (data) {
        return data['user_answer'] == data['correct_answer'];
      },
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'you got $numcorrectAnswer out of $numtotalQuestion correct answer from the above question.',
              style: GoogleFonts.oswald(
                color: const Color.fromARGB(255, 11, 36, 48),
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionsSummary(SummaryData),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: reQuiz,
              style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 31, 141, 145)),
            ),
              child: const Text(
                'Retake Quiz', 
                style: TextStyle( 
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 248, 246, 249),
                            ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
