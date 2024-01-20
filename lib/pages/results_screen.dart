import 'package:advanced_basics/data/questions.dart';
import 'package:advanced_basics/pages/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});
  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    // We are adding values and keys for the summary
    // in order to use below
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    // Compare user answer with correct answer and filter the data
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You answered  ${numCorrectQuestions ?? 0} out of ${numTotalQuestions ?? 0} questions correctly!',
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            if (summaryData.isNotEmpty)
              QuestionsSummary(summaryData)
            else
              Text('No Summary Data'),
            const SizedBox(height: 30),
            TextButton.icon(
                icon: Icon(Icons.refresh),
                onPressed: onRestart,
                label: Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
