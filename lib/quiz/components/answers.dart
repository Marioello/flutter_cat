import 'package:flutter/material.dart';

class AnswersWidget extends StatelessWidget {
  const AnswersWidget({Key? key, required this.onTapAnswer, required this.data})
      : super(key: key);

  final void Function(int) onTapAnswer;
  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jawaban'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0.0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          int i = index + 1;

          var text = data[i]['text'];

          var icon = Icon(
            text == '' ? Icons.remove : Icons.check,
            color: text == '' ? Colors.grey : Colors.blue,
          );

          return ListTile(
            onTap: () => onTapAnswer(i),
            leading: icon,
            title: Text(
              '$i. $text',
              style: const TextStyle(fontSize: 20.0),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: data.length - 1,
      ),
    );
  }
}
