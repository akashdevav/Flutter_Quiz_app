import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summarydata, {super.key});

  List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summarydata.map((data) {
          return Row(
            children: [
              Text(
                ((data['question_index'] as int) + 1).toString(),
                style: const TextStyle(
                    color: Color.fromARGB(178, 0, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(data['quiz_question'] as String),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['correct_answer'] as String),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['user_answer'] as String),
                  ],
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
