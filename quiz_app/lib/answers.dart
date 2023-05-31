import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.ontap, required this.answer});

  final void Function() ontap;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        backgroundColor: const Color.fromARGB(255, 31, 141, 145),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: ontap,
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
