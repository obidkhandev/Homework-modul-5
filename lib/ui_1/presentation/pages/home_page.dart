import 'package:flutter/material.dart';
import 'package:modul_5/ui_1/data/data_sources/servises/auth/auth_service.dart';
import 'package:provider/provider.dart';

class HomePageUi1 extends StatefulWidget {
  const HomePageUi1({super.key});

  @override
  State<HomePageUi1> createState() => _HomePageUi1State();
}

class _HomePageUi1State extends State<HomePageUi1> {
  void signOut() async {
    final authService = Provider.of<AuthServiceUi1>(context, listen: false);
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home Page"),
        actions: [
          IconButton(
            onPressed: signOut,
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
