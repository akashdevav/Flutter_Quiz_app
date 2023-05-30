import 'package:flutter/material.dart';
import 'package:quiz_app/front_page.dart';
import 'package:quiz_app/quiz_screen.dart';

class Background extends StatefulWidget {
  const Background({super.key});
  @override
  State<Background> createState() {
    return _BackgroundState();
  }
}
class _BackgroundState extends State<Background> {

  var activeScreen = 'home_page';

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = ;
  // }

  void changeScreen() {
    setState(() {
      activeScreen = 'quiz_page';
    });
  }

  @override
  Widget build(context) {
    Widget currentScreen = FrontLogo(changeScreen);
    if(activeScreen == 'quiz_page') {
      currentScreen = const QuizScreen();
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter quiz app'),
          backgroundColor: const Color.fromARGB(255, 42, 89, 122),
          toolbarHeight: 45.0,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Container(
            alignment: AlignmentDirectional.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 247, 236, 139),
                  Color.fromARGB(255, 175, 158, 5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: currentScreen,
          ),
        ),
      ),
    );
  }
}
