import 'package:flutter/material.dart';
import 'package:modul_5/ui_1/data/data_sources/servises/auth/auth_service.dart';
import 'package:modul_5/ui_1/presentation/components/my_button.dart';
import 'package:modul_5/ui_1/presentation/components/my_text_field.dart';
import 'package:provider/provider.dart';

class LoginPageUi1 extends StatefulWidget {
  final Function() onTap;
  const LoginPageUi1({super.key, required this.onTap});

  @override
  State<LoginPageUi1> createState() => _LoginPageUi1State();
}

class _LoginPageUi1State extends State<LoginPageUi1> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sing in user
  void singIn() async {
    // get the auth service
    final authService = Provider.of<AuthServiceUi1>(context, listen: false);

    try {
      await authService.singInWithEmailandPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  // logo
                  Icon(
                    Icons.chat,
                    size: 80,
                    color: Colors.grey.shade700,
                  ),

                  const SizedBox(height: 40),
                  //welcome back message
                  const Text(
                    "Welcome back yo've been missed",
                    style: TextStyle(fontSize: 16),
                  ),

                  const SizedBox(height: 20),
                  // email textfield
                  MyTextField(
                    textEditingController: emailController,
                    hintText: "Email",
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),

                  // password textfield
                  MyTextField(
                    textEditingController: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // sign in button
                  MyButtonUi1(text: "Sign in", press: singIn),

                  // not a member? register now
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Not a member?"),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Register now",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
