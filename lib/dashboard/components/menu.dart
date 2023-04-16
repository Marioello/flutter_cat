import 'package:flutter/material.dart';
import 'package:flutter_cat/constants.dart';

class MenuLayout extends StatelessWidget {
  const MenuLayout({Key? key, required this.selectedId}) : super(key: key);

  final void Function(int) selectedId;

  @override
  Widget build(BuildContext context) {
    final list = pageList.where((w) => w['id'] != 0).toList();

    ///
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (_, i) {
          int id = list[i]['id'] as int;
          var text = list[i]['title'];

          ///
          return ListTile(
            onTap: () => selectedId(id),
            // leading: icon,
            title: Text(
              '$text',
              style: const TextStyle(fontSize: 20.0),
            ),
          );
        },
        separatorBuilder: (_, i) => const Divider(),
        itemCount: list.length,
      ),
    );
  }
}
