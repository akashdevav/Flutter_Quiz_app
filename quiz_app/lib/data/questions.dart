import 'package:quiz_app/model/quiz_model.dart';

var questions = [
  const QuizModel(
    '1. What is Flutter?',
    [
      'A UI framework',
      'A programming language',
      'An operating system',
      'A database management system'
    ],
  ),
  const QuizModel(
    '2. Which programming language is primarily used for Flutter development?',
    ['Dart', 'Java', 'Swift', 'Kotlin'],
  ),
  const QuizModel(
    '3. What is the purpose of the pubspec.yaml file in a Flutter project?',
    [
      'To manage project dependencies',
      'To configure the project\'s build settings',
      'To define the app\'s user interface',
      'To handle database operations'
    ],
  ),
  const QuizModel(
    '4. Which widget is used to create a button in Flutter?',
    ['ElevatedButton', 'TextField', 'Container', 'Text'],
  ),
  const QuizModel(
    '5. What does the setState() method do in Flutter?',
    [
      ' Updates the state of a widget and triggers a rebuild',
      ' Reloads the entire application',
      ' Defines the layout of the user interface',
      ' Creates a new instance of a widget'
    ],
  )
];
