import 'package:flutter/material.dart';

class PageEmpty extends StatelessWidget {
  const PageEmpty({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
        ],
      ),
    );
  }
}
