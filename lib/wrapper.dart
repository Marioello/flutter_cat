import 'package:flutter/material.dart';
import 'package:flutter_cat/dashboard/layout.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // int pageIndex = 0;
    // switch (pageIndex) {
    //   case 1:
    //     return const QuizMainPage(title: 'Master CAT');
    //   default:
    //     return const Dashboard();
    // }

    return const Dashboard();
  }
}
