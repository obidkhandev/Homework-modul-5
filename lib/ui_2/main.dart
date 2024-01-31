import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/pages/welcolme_page.dart';

void main() {
  runApp(const MyAppUi2(),);
}

class MyAppUi2 extends StatelessWidget {
  const MyAppUi2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomePageUi1(),
    );
  }
}