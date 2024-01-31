import 'package:flutter/material.dart';

class EmailTextFeild extends StatelessWidget {
  final TextEditingController textController;
  final String text;
  const EmailTextFeild({
    super.key,
    required this.textController,
    this.text = "Email",
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: text,
        labelStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
