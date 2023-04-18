import 'package:flutter/material.dart';
import 'package:quiz_app/front_page.dart';

class Gcontainer extends StatelessWidget {
  const Gcontainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 247, 236, 139),
        Color.fromARGB(255, 175, 158, 5)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: const Center(child: FrontLogo(),) ,
    );
  }
}
