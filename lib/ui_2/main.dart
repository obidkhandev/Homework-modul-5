import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/data/services/auth/auth_gate.dart';
import 'package:modul_5/ui_2/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyAppUi2(),);
}

class MyAppUi2 extends StatelessWidget {
  const MyAppUi2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGateUi2(),
    );
  }
}