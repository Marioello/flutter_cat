import 'package:flutter_cat/shared/page_empty.dart';
import 'package:flutter_cat/quiz/quiz.dart';

final pageList = [
  {
    'id': 0,
    'page': PageEmpty(title: '404'),
    'title': '404',
  },
  {
    'id': 1,
    'page': PageEmpty(title: 'Dashboard'),
    'title': 'Dashboard',
  },
  {
    'id': 2,
    'page': PageEmpty(title: 'Manajemen Soal'),
    'title': 'Manajemen Soal',
  },
  {
    'id': 3,
    'page': QuizMainPage(title: 'Master CAT'),
    'title': 'Kuis',
  },
];
