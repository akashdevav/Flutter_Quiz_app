import 'package:flutter/material.dart';
import 'package:quiz_app/gcontainer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter quiz app'),
          backgroundColor: const Color.fromARGB(255, 42, 89, 122),
          toolbarHeight: 45.0,
        ),
        body: const Gcontainer(
          Color.fromARGB(255, 247, 236, 139),
          Color.fromARGB(255, 175, 158, 5),
        ),
      ),
    );
  }
}
