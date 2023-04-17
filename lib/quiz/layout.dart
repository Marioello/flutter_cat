import 'package:flutter/material.dart';
import 'package:flutter_cat/constants.dart';
import 'package:flutter_cat/quiz/components/answers.dart';
import 'package:flutter_cat/data/question.dart';
import 'package:flutter_cat/quiz/components/question.dart';
import 'package:flutter_cat/shared/question_empty.dart';

class QuizLayout extends StatefulWidget {
  const QuizLayout({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<QuizLayout> createState() => _QuizLayoutState();
}

class _QuizLayoutState extends State<QuizLayout> {
  int index = 1;
  bool noQuestion = false;

  void onTapAnswerFunction(int value) {
    setState(() => index = value);
  }

  void onPressedBtnAnswerFunction(int index, int value) {
    String text = '';
    setState(() {
      switch (value) {
        case 1:
          text = 'A';
          break;
        case 2:
          text = 'B';
          break;
        case 3:
          text = 'C';
          break;
        case 4:
          text = 'D';
          break;
        case 5:
          text = 'E';
          break;
        default:
          break;
      }
      answers[index] = {'text': text, 'value': value};
    });
  }

  @override
  Widget build(BuildContext context) {
    final q = questionList.where((w) => w.index == index - 1);
    if (q.isEmpty) {
      setState(() => noQuestion = true);
    } else {
      setState(() => noQuestion = false);
    }

    ///
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Row(
        children: [
          Expanded(
            flex: defaultFlex * 25,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
              child: Container(
                color: Colors.amber[50],
                child: AnswersWidget(
                  onTapAnswer: onTapAnswerFunction,
                  data: answers,
                ),
              ),
            ),
          ),
          Expanded(
            flex: defaultFlex * 50,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
              child: Container(
                color: Colors.amber[100],
                child: noQuestion
                    ? const QuestionEmpty()
                    : QuestionWidget(
                        index: index,
                        question: q.single,
                        onPressedBtnAnswer: onPressedBtnAnswerFunction,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
