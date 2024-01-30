import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modul_5/ui_1/data/data_sources/servises/auth/login_or_register.dart';
import 'package:modul_5/ui_1/presentation/pages/home_page.dart';

class AuthGateUi1 extends StatelessWidget {
  const AuthGateUi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return const HomePageUi1();
          } else {
            return const LoginOrRegisterUi1();
          }
        }),
      ),
    );
  }
}
