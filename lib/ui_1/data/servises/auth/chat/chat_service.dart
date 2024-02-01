import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modul_5/ui_1/model/message.dart';

class ChatServiceUi1 extends ChangeNotifier {
  // get instance of auth and firebase
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Send message
  Future<void> sendMessage(String receiverId, String message) async {
    // get current user info
    final String currentUserId = _firebaseAuth.currentUser!.uid;
    final String currentUserEmail = _firebaseAuth.currentUser!.email.toString();
    final Timestamp timestamp = Timestamp.now();

    // create new message
    MessageUi1 newMessage = MessageUi1(
        senderId: currentUserId,
        receiverId: receiverId,
        senderEmail: currentUserEmail,
        message: message,
        timestamp: timestamp
      );

    //construct chat room id from current user id and receiver id (sorted to ensure uniquess)
    List<String> ids = [currentUserId, receiverId];
    ids.sort();
    String chatRoomId = ids.join("_");

    // add new message to database
    await _firestore
        .collection("chat_rooms")
        .doc(chatRoomId)
        .collection("messages")
        .add(newMessage.toMap());
  }

  // get message
  Stream<QuerySnapshot> getMessage(String userId, String otherUserid) {
    List<String> ids = [userId, otherUserid];
    ids.sort();
    String chatRoomId = ids.join("_");
    return _firestore
        .collection("chat_rooms")
        .doc(chatRoomId)
        .collection("messages")
        .orderBy("timestamp", descending: false).snapshots();
  }
}