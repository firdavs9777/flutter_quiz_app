import 'package:advanced_basics/pages/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:advanced_basics/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    print(selectedAnswer);
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer);
                  });
            }),
            // AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
            // AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2],
            //   onTap: () {},
            // ),
          ],
        ),
      ),
    ); // Removed const from Text widget
  }
}
