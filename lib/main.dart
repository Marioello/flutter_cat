import 'package:flutter/material.dart';
import 'package:flutter_cat/answers.dart';
import 'package:flutter_cat/data/question.dart';
import 'package:flutter_cat/layout_question.dart';
import 'package:flutter_cat/layout_question_empty.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Master CAT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 1;
  bool noQuestion = false;
  void whatToDo(int value) {
    setState(() => index = value);
    print('Should receive the Value from myCallback');
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    int defaultFlex = 100 / 100 as int;

    final q = questionList.where((w) => w.index == index - 1);
    print(q.isEmpty);
    if (q.isEmpty) {
      setState(() => noQuestion = true);
    } else {
      setState(() => noQuestion = false);
    }

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      //   centerTitle: true,
      // ),
      body: Row(
        children: [
          Expanded(
            flex: defaultFlex * 25,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
              child: Container(
                color: Colors.amber[50],
                child: AnswersLayout(
                  myCallback: whatToDo,
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
                    ? QuestionEmpty()
                    : QuestionLayout(index: index, question: q.single),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
