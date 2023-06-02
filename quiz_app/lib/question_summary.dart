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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: summarydata.map((data) {
              String textstr = 'Ans: ';
              String crtans = data['correct_answer'] as String;
              return Row(
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                        color: Color.fromARGB(233, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['quiz_question'] as String,
                          style: const TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w900, 
                              color: Color.fromARGB(232, 0, 0, 0)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          //data['correct_answer'] as String,
                          '$textstr$crtans',
                          style: const TextStyle( 
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 48, 5, 75),
                            ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: const TextStyle( 
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 133, 3, 255),
                            ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
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
