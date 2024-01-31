import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/components/components.dart';
import 'package:modul_5/ui_2/presentation/components/my_button.dart';
import 'package:modul_5/ui_2/presentation/components/my_rich_text.dart';
import 'package:modul_5/ui_2/presentation/components/text_field_email.dart';
import 'package:modul_5/ui_2/presentation/components/text_field_password.dart';
import 'package:modul_5/ui_2/presentation/components/welcome_page_backgroun.dart';

class WelcomePageUi1 extends StatefulWidget {
  const WelcomePageUi1({super.key});

  @override
  State<WelcomePageUi1> createState() => _WelcomePageUi1State();
}

class _WelcomePageUi1State extends State<WelcomePageUi1> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void singIng() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWelcomePageUi2(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 5),
              const Text(
                "Please put your information below to log in to your account",
                style: TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              EmailTextFeild(textController: emailController),
              const SizedBox(height: 10),
              PasswordTextField(passwordController: passwordController),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Icon(Icons.check_box, color: kSecondaryColorUi2),
                  SizedBox(width: 10),
                  Text(
                    "Remember me",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const MyButtonUi2(text: "Login"),
              const SizedBox(height: 10),
              const MyRichTextUi2(
                firstText: "Don't have an account?",
                secondText: "Sing Up",
              ),
              const SizedBox(height: 30),
              Row(
                // mainAxisAlignment: ,
                children: [
                  Divider(height: 2,color: Colors.white,),
                  Text("Or Login with",style: TextStyle(color: Colors.white),),
                  Divider(height: 2,color: Colors.white,),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

