import 'package:flutter/material.dart';
// import 'package:modul_5/ui_1/presentation/pages/login_page.dart';
import 'package:modul_5/ui_1/presentation/pages/register_page.dart';

class MyAppUi1 extends StatelessWidget {
  const MyAppUi1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPageUi1(),
    );
  }
}