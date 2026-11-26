import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/e01_page_ui.dart';

void main() {
  runApp(const FlutterUiWorkshopProject());
}

class FlutterUiWorkshopProject extends StatelessWidget {
  const FlutterUiWorkshopProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orange ส้ม',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const E01PageUI(),
    );
  }
}
