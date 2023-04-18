import 'package:flutter/material.dart';

//class - 1
class FrontLogo extends StatefulWidget {
  const FrontLogo({super.key});

  @override
  State<FrontLogo> createState() {
    return _FrontLogoState();
  }
}

//class - 2
class _FrontLogoState extends State<FrontLogo> {
  void onPressed() {
    setState(() {
      
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/Image/quiz-logo.png',
        ),
        const Padding(padding: EdgeInsets.all(5.0)),
        const Text(
          'Learn flutter the fun way!',
          style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
        ),
        const Padding(padding: EdgeInsets.all(7.0)),
        ElevatedButton(
          onPressed: onPressed,
          child: Text('start quiz'),
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 31, 141, 145)),
          ),
        )
      ],
    );
  }
}
