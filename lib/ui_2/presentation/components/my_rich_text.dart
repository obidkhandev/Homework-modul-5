import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/components/components.dart';

class MyRichTextUi2 extends StatelessWidget {
  final String firstText;
  final String secondText;
  const MyRichTextUi2({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: firstText,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        TextSpan(
          text: secondText,
          style: TextStyle(color: kSecondaryColorUi2, fontSize: 16),
        )
      ])),
    );
  }
}
