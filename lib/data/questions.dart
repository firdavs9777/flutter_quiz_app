import 'package:advanced_basics/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'In Flutter, what is the purpose of the "setState" method?',
    [
      'a. To update the widget state',
      'b. To initialize a widget',
      'c. To build the widget tree',
      'd. To dispose of a widget'
    ],
    // 'c. To update the widget state',
  ),
  QuizQuestion(
    'Which widget is commonly used for creating a list of scrollable elements in Flutter?',
    ['ListView', 'GridView', 'ScrollView', 'Column'],
    // 'a. ListView',
  ),
  QuizQuestion(
    'What is the purpose of the "pubspec.yaml" file in a Flutter project?',
    [
      'a. To configure project settings',
      'b. To define dependencies',
      'c. To specify app icons',
      'd. All of the above'
    ],
    // 'd. All of the above',
  ),
  QuizQuestion(
    'In Flutter, what is the role of the "BuildContext"?',
    [
      'a. Identifying widget types',
      'b. Managing widget state',
      'c. Building the widget tree',
      'd. Locating a widget in the tree'
    ],
    // 'd. Locating a widget in the tree',
  ),
  QuizQuestion(
    'Which widget is used for creating a container with rounded corners in Flutter?',
    ['Container', 'Card', 'ClipRRect', 'Padding'],
    // 'c. ClipRRect',
  ),
  QuizQuestion(
    'What is the primary purpose of the "Navigator" in Flutter?',
    [
      'a. Handling user input',
      'b. Managing app navigation',
      'c. Animating widgets',
      'd. Defining routes'
    ],
    // 'b. Managing app navigation',
  ),
  QuizQuestion(
    'Which of the following is a stateless widget in Flutter?',
    ['StatefulBuilder', 'InheritedWidget', 'Container', 'StreamBuilder'],
    // 'c. Container',
  ),
  QuizQuestion(
    'What is the purpose of the "Flutter Inspector" in the Flutter development environment?',
    [
      'a. Debugging Dart code',
      'b. Profiling app performance',
      'c. Inspecting widget properties',
      'd. Generating app screenshots'
    ],
    // 'c. Inspecting widget properties',
  ),
  QuizQuestion(
    'Which method is called when a stateful widget is first inserted into the tree in Flutter?',
    ['createState', 'initState', 'build', 'dispose'],
    // 'b. initState',
  ),
];
