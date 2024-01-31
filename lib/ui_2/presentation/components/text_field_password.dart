import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/components/my_dashed_controller.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController passwordController;
  final String text;
  const PasswordTextField({
    super.key,
    required this.passwordController,
    this.text= "Password"
  });


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passwordController,
      style: const TextStyle(color: Colors.white),
      decoration:  InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.all(15),
          child: MyDashedContainer(),
        ),
        labelText: text,
        labelStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}