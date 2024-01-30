import 'package:flutter/material.dart';

class HomePageUi1 extends StatefulWidget {
  const HomePageUi1({super.key});

  @override
  State<HomePageUi1> createState() => _HomePageUi1State();
}

class _HomePageUi1State extends State<HomePageUi1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home Page"),
      ),
    );
  }
}