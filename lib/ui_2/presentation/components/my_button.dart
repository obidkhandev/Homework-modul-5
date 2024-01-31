import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/components/components.dart';

class MyButtonUi2 extends StatelessWidget {
  final String text;
  const MyButtonUi2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kSecondaryColorUi2,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
