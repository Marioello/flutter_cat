import 'package:flutter/material.dart';
import 'package:flutter_cat/data/question.dart';

class QuestionLayout extends StatelessWidget {
  const QuestionLayout(
      {Key? key,
      required this.index,
      required this.question,
      required this.myCallback})
      : super(key: key);

  final int index;
  final Question question;
  final void Function(int, int) myCallback;

  @override
  Widget build(BuildContext context) {
    double fontSize = 20.0;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$index. ${question.category}'),
            const Text('Timer'),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 12,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      question.text,
                      style: TextStyle(fontSize: fontSize),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'A. ${question.opt1}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                            Text(
                              'B. ${question.opt2}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                            Text(
                              'C. ${question.opt3}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'D. ${question.opt4}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                            Text(
                              'E. ${question.opt5}',
                              style: TextStyle(fontSize: fontSize),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        answerButton('A', 1, index),
                        answerButton('B', 2, index),
                        answerButton('C', 3, index),
                        answerButton('D', 4, index),
                        answerButton('E', 5, index),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton answerButton(String name, int value, int index) {
    Color color = Colors.grey.shade100;

    ///
    switch (value) {
      case 1:
        color = Colors.red;
        break;
      case 2:
        color = Colors.amber;
        break;
      case 3:
        color = Colors.green;
        break;
      case 4:
        color = Colors.blue;
        break;
      case 5:
        color = Colors.orange;
        break;
      default:
        break;
    }

    ///
    return ElevatedButton(
      onPressed: () => myCallback(index, value),
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(
        name,
        style: const TextStyle(fontSize: 20.0),
      ),
    );
  }
}
