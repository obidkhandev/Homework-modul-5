import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/data/services/auth/auth_service.dart';
import 'package:provider/provider.dart';

class HomePageUi2 extends StatefulWidget {
  const HomePageUi2({super.key});

  @override
  State<HomePageUi2> createState() => _HomePageUi2State();
}

class _HomePageUi2State extends State<HomePageUi2> {
  
  void signOut() async {
    final authService = Provider.of<AuthServiceUi2>(context, listen: false);
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(onPressed: signOut, icon: const Icon(Icons.logout),color: Colors.grey,),
        ],
      ),
    );
  }
}
