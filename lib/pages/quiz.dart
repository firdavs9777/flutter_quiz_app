import 'package:advanced_basics/pages/questions_main.dart';
import 'package:advanced_basics/pages/results_screen.dart';
import 'package:advanced_basics/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
// Assuming WelcomeScreen is correct
  List<String> selectedAnswers = [];

  var activeScreen = 'start-screen';

  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : Questions();
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = Questions(
        onSelectedAnswer: chooseAnswer,
      );
    } else if (activeScreen == 'results-screen') {
      screenWidget =
          ResultScreen(chosenAnswers: selectedAnswers, onRestart: restartQuiz);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.pinkAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: screenWidget),
      ),
    );
  }
}
