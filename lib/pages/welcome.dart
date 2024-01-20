import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Opacity(
          opacity: 0.4,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Text(
          'Learn Flutter the fun way',
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            icon: Icon(Icons.quiz),
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'))
      ],
    ),
    );
  }
}
