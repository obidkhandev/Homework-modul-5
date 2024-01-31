import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/components/backround.dart';
import 'package:modul_5/ui_2/presentation/components/my_button.dart';
import 'package:modul_5/ui_2/presentation/components/text_field_password.dart';

class ChangePasswordUi2 extends StatefulWidget {
  const ChangePasswordUi2({super.key});

  @override
  State<ChangePasswordUi2> createState() => _ChangePasswordUi2State();
}

class _ChangePasswordUi2State extends State<ChangePasswordUi2> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
              "Change Password",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              "Create a new, strong password that you don't use before",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            PasswordTextField(
              passwordController: passwordController,
              text: "Create password",
            ),
            const SizedBox(height: 15),
            PasswordTextField(
              passwordController: confirmPasswordController,
              text: "Comfirm password",
            ),
            const SizedBox(height: 5),
            const Text(
              "At least 8 charachters",
              style: TextStyle(color: Colors.grey),
            ),
            const Spacer(),
            const MyButtonUi2(text: "Save & Login"),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
