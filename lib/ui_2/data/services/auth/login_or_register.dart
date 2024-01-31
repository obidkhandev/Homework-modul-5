import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/pages/login_page.dart';
import 'package:modul_5/ui_2/presentation/pages/sign_up.dart';

class LoginOrRegisterUi2 extends StatefulWidget {
  const LoginOrRegisterUi2({super.key});

  @override
  State<LoginOrRegisterUi2> createState() => _LoginOrRegisterUi2State();
}

class _LoginOrRegisterUi2State extends State<LoginOrRegisterUi2> {
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
      return LoginPageUi2(onTap: tooglePage);
    } else {
      return SingUpUi2(onTap: tooglePage);
    }
  }
}
