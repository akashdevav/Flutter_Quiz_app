import 'package:flutter/material.dart';

class FrontLogo extends StatelessWidget {
  const FrontLogo(this.onpressed, {super.key});
  
  final void Function() onpressed; 
  @override
  Widget build(context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/Image/quiz-logo.png',
          ),
          //const Padding(padding: EdgeInsets.all(5.0)),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 5, 15, 27),
                fontWeight: FontWeight.bold,),
          ),
          //const Padding(padding: EdgeInsets.all(7.0)),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: onpressed,
            style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 31, 141, 145)),
            ),
            child: const Text('start quiz'),
          )
        ],
      ),
    );
  }
}
