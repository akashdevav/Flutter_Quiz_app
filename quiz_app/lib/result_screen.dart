import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.reQuiz, {super.key, required this.choosenAnswer});
  final void Function() reQuiz;
  final List<String> choosenAnswer;

  //New method to store the questions and right answers in the result page.
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i= 0; i< choosenAnswer.length; i++) {
      summary.add({
        'question_index': [i],
        'quiz_question': questions[i].text,
        'your_answer': questions[i].answers[0]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('you got x out of y correct answer from the above question.'),
            const SizedBox(
              height: 20,
            ),
            const Text('you selected answer + the right answer'),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: reQuiz,
              child: const Text(
                'Retake Quiz',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
