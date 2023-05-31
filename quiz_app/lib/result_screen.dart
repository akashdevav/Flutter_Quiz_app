import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.reQuiz, {super.key});
  final void Function() reQuiz;

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
