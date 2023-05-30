import 'package:flutter/material.dart';

class AnswerQuiz extends StatelessWidget {
  const AnswerQuiz({super.key, required this.ontap, required this.answer});

  final void Function() ontap;
  final String answer;

   @override
   Widget build(BuildContext context) {
    return ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 31, 141, 145)),
            onPressed: ontap,
            child: Text(
              answer,
            ),
          );
  }
}