import 'package:flutter/material.dart';
import 'package:flutter_cat/constants.dart';
import 'package:flutter_cat/dashboard/components/menu.dart';

class DashboardLayout extends StatefulWidget {
  const DashboardLayout({super.key});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout> {
  int selectedPageId = 1;

  void selectedRouteId(int value) {
    setState(() => selectedPageId = value);
  }

  @override
  Widget build(BuildContext context) {
    // Validate if page exists
    if (!pageList.asMap().containsKey(selectedPageId)) {
      setState(() => selectedPageId = 0);
    }

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Row(
        children: [
          Expanded(
            flex: defaultFlex * 15,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
              child: Container(
                color: Colors.amber[50],
                child: MenuLayout(selectedId: selectedRouteId),
              ),
            ),
          ),
          Expanded(
            flex: defaultFlex * 85,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 10.0, 10.0, 10.0),
              child: Container(
                color: Colors.amber[100],
                child: pageList
                    .where((w) => w['id'] == selectedPageId)
                    .single['page'] as Widget,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
