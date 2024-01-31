import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modul_5/ui_1/data/data_sources/servises/auth/auth_service.dart';
import 'package:modul_5/ui_1/presentation/pages/chat_page.dart';
import 'package:provider/provider.dart';

class HomePageUi1 extends StatefulWidget {
  const HomePageUi1({super.key});

  @override
  State<HomePageUi1> createState() => _HomePageUi1State();
}

class _HomePageUi1State extends State<HomePageUi1> {
  // instance of auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign user out
  void signOut() async {
    final authService = Provider.of<AuthServiceUi1>(context, listen: false);
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(
            onPressed: signOut,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: _buildUserList(),
    );
  }

  // build a list of users excepts for the current
  Widget _buildUserList() {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("users").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text("Error");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("loading...");
          }
          return ListView(
            children: snapshot.data!.docs
                .map<Widget>((doc) => _buildUserListItem(doc))
                .toList(),
          );
        });
  }

  // build individual user list items
  Widget _buildUserListItem(DocumentSnapshot document) {
    Map<String, dynamic> data = document.data()! as Map<String, dynamic>;

    // display all users expect current user
    if (_auth.currentUser!.email != data["email"]) {
      return ListTile(
        title: Text(data["email"]),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ChatPageUi1(
                  receiverUserEmail: data["email"],
                  receiverUserId: data["uid"],
                );
              },
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }
}
