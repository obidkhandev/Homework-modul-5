import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/components/components.dart';

class MyButtonUi2 extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const MyButtonUi2({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: kSecondaryColorUi2,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
