import 'package:flutter/material.dart';
import 'package:modul_5/ui_1/data/servises/auth/auth_service.dart';
import 'package:modul_5/ui_1/presentation/components/my_button.dart';
import 'package:modul_5/ui_1/presentation/components/my_text_field.dart';
import 'package:provider/provider.dart';

class RegisterPageUi1 extends StatefulWidget {
  final Function() onTap;
  const RegisterPageUi1({super.key, required this.onTap});

  @override
  State<RegisterPageUi1> createState() => _RegisterPageUi1State();
}

class _RegisterPageUi1State extends State<RegisterPageUi1> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  //sing up user
  void singUp() async {
    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Password don't match!"),
        ),
      );
      return;
    }

    // get auth service
    final authService = Provider.of<AuthServiceUi1>(context, listen: false);
    try {
      await authService.singUpWithEmailandPassword(
        emailController.text,
        passwordController.text,
      );
      
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString(),),
        ),
      );
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
                  // create accout message
                  const Text(
                    "Let's create an account for you!",
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
                    height: 10,
                  ),
                  MyTextField(
                    textEditingController: confirmPasswordController,
                    hintText: "Confirm password",
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  // sign up button
                  MyButtonUi1(text: "Sign Up", press: singUp),

                  // not a member? register now
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already a member?"),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          "Login now",
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
