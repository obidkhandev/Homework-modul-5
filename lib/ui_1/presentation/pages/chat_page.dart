import 'package:flutter/material.dart';

class ChatPageUi1 extends StatefulWidget {
  final String receiverUserEmail;
  final String receiverUserId;

  const ChatPageUi1({
    super.key,
    required this.receiverUserEmail,
    required this.receiverUserId,
  });

  @override
  State<ChatPageUi1> createState() => _ChatPageUi1State();
}

class _ChatPageUi1State extends State<ChatPageUi1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.receiverUserEmail),
      ),
    );
  }
}
