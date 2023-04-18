import 'package:flutter/material.dart';
import 'package:quiz_app/gcontainer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter quiz app'),
          backgroundColor: const Color.fromARGB(255, 42, 89, 122), 
          toolbarHeight: 45.0,
        ),
        body: const Gcontainer()),
  ));
}
