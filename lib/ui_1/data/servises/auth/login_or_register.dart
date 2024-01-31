import 'package:flutter/material.dart';
import 'package:modul_5/ui_1/presentation/pages/login_page.dart';
import 'package:modul_5/ui_1/presentation/pages/register_page.dart';

class LoginOrRegisterUi1 extends StatefulWidget {
  const LoginOrRegisterUi1({super.key});

  @override
  State<LoginOrRegisterUi1> createState() => _LoginOrRegisterUi1State();
}

class _LoginOrRegisterUi1State extends State<LoginOrRegisterUi1> {
  bool showLoginPage = true;
  // toogle between login and register page
  void tooglePage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPageUi1(onTap: tooglePage);
    } else {
      return RegisterPageUi1(onTap: tooglePage);
    }
  }
}
