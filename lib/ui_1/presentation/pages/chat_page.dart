import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modul_5/ui_1/data/data_sources/servises/auth/chat/chat_service.dart';
import 'package:modul_5/ui_1/presentation/components/chat_bubble.dart';
import 'package:modul_5/ui_1/presentation/components/my_text_field.dart';

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
  final TextEditingController _messageController = TextEditingController();
  final ChatServiceUi1 _chatServiceUi1 = ChatServiceUi1();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void sendMessage() async {
    // only send message if there is something so send
    if (_messageController.text.isNotEmpty) {
      await _chatServiceUi1.sendMessage(
        widget.receiverUserId,
        _messageController.text,
      );
    }
    // clear the text controller after sending the message
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.receiverUserEmail),
      ),
      body: Column(
        children: [
          // messages
          Expanded(child: _buildMessageList()),

          // user input
          _buildMessageInput(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  //build message list
  Widget _buildMessageList() {
    return StreamBuilder(
      stream: _chatServiceUi1.getMessage(
          widget.receiverUserId, _firebaseAuth.currentUser!.uid),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(
            "Error${snapshot.error}",
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading..");
        }
        return ListView(
          children:
              snapshot.data!.docs.map((doc) => _buildMessageItem(doc)).toList(),
        );
      },
    );
  }

  //build message item
  Widget _buildMessageItem(DocumentSnapshot document) {
    Map<String, dynamic> data = document.data() as Map<String, dynamic>;

    // align the message to the right if the sender is the current user, otherwise to the left
    var alignment = (data["senderId"] == _firebaseAuth.currentUser!.uid)
        ? Alignment.centerRight
        : Alignment.centerLeft;

    return Container(
      alignment: alignment,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: (data["senderId"] == _firebaseAuth.currentUser!.uid)
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        mainAxisAlignment: (data["senderId"] == _firebaseAuth.currentUser!.uid)
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Text(data["senderEmail"]),
          const SizedBox(height: 5),
          ChatBubbleUi1(message: data["message"]),
        ],
      ),
    );
  }

  //  build message input
  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: MyTextField(
              textEditingController: _messageController,
              hintText: "Enter message",
              obscureText: false,
            ),
          ),
          // Send Button
          IconButton(
            onPressed: sendMessage,
            icon: const Icon(
              Icons.arrow_upward,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
