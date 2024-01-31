import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/components/components.dart';

class MyRichTextUi2 extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Function()? onTap;
  const MyRichTextUi2({
    super.key,
    required this.firstText,
    required this.secondText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            secondText,
            style: const TextStyle(color: kSecondaryColorUi2, fontSize: 16),
          ),
        )
      ],
    );
  }
}
