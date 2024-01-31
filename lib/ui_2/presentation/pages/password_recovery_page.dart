import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/components/backround.dart';
import 'package:modul_5/ui_2/presentation/components/my_button.dart';
import 'package:modul_5/ui_2/presentation/components/text_field_email.dart';
import 'package:modul_5/ui_2/presentation/pages/change_passwort.dart';

class PasswordRecoveryUi2 extends StatefulWidget {
  const PasswordRecoveryUi2({super.key});

  @override
  State<PasswordRecoveryUi2> createState() => _PasswordRecoveryUi2State();
}

class _PasswordRecoveryUi2State extends State<PasswordRecoveryUi2> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundUi2(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.arrow_circle_right_rounded,
                  color: Colors.green.shade200,
                  size: 24,
                ),
                const SizedBox(width: 5),
                const Text(
                  "installpay",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Password Recovery",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              "Please put your information below to log in to your account",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            EmailTextFeild(
              textController: emailController,
              text: "Email",
            ),
            const Spacer(),
            MyButtonUi2(
              text: "Send Code",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ChangePasswordUi2();
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
