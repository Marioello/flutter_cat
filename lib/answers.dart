import 'package:flutter/material.dart';

class AnswersLayout extends StatelessWidget {
  final void Function(int) myCallback;
  const AnswersLayout({Key? key, required this.myCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jawaban'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0.0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          int i = index + 1;
          return ListTile(
            onTap: () => myCallback(i),
            leading: Text('$i.'),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: 100,
      ),
    );
  }
}
