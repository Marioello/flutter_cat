import 'package:flutter_cat/shared/page_empty.dart';
import 'package:flutter_cat/quiz/layout.dart';

final int defaultFlex = 100 / 100 as int;
final answers = List<Map<String, dynamic>>.generate(
    101, (counter) => {'text': '', 'value': 0});

final pageList = [
  {
    'id': 0,
    'page': const PageEmpty(title: '404'),
    'title': '404',
  },
  {
    'id': 1,
    'page': const PageEmpty(title: 'Dashboard'),
    'title': 'Dashboard',
  },
  {
    'id': 2,
    'page': const PageEmpty(title: 'Manajemen Soal'),
    'title': 'Manajemen Soal',
  },
  {
    'id': 3,
    'page': const QuizLayout(title: 'Master CAT'),
    'title': 'Kuis',
  },
];
