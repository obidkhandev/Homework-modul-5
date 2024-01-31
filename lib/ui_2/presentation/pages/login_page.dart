import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/components/components.dart';
import 'package:modul_5/ui_2/presentation/components/my_button.dart';
import 'package:modul_5/ui_2/presentation/components/my_divider.dart';
import 'package:modul_5/ui_2/presentation/components/my_rich_text.dart';
import 'package:modul_5/ui_2/presentation/components/social_media.dart';
import 'package:modul_5/ui_2/presentation/components/text_field_email.dart';
import 'package:modul_5/ui_2/presentation/components/text_field_password.dart';
import 'package:modul_5/ui_2/presentation/components/backround.dart';
import 'package:modul_5/ui_2/presentation/pages/password_recovery_page.dart';

class LoginPageUi2 extends StatefulWidget {
  final Function() onTap;
  const LoginPageUi2({super.key, required this.onTap});

  @override
  State<LoginPageUi2> createState() => _LoginPageUi2State();
}

class _LoginPageUi2State extends State<LoginPageUi2> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void singIng() {}

  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundUi2(
        child: ListView(
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
            const Text(
              "Please put your information below to log in to your account",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            EmailTextFeild(textController: emailController),
            const SizedBox(height: 10),
            PasswordTextField(passwordController: passwordController),
            const SizedBox(height: 15),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (!checkBox) {
                        checkBox = true;
                      } else {
                        checkBox = false;
                      }
                    });
                  },
                  child: checkBox
                      ? const Icon(Icons.check_box, color: kSecondaryColorUi2)
                      : const Icon(
                          Icons.check_box_outline_blank,
                          color: kSecondaryColorUi2,
                        ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Remember me",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return const PasswordRecoveryUi2();
                        }),
                      ),
                    );
                  },
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const MyButtonUi2(text: "Login"),
            const SizedBox(height: 10),
            MyRichTextUi2(
              firstText: "Don't have an account? ",
              secondText: "Sing Up",
              onTap: widget.onTap,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyDivider(width: size.width / 3),
                const Text(
                  "Or Login with",
                  style: TextStyle(color: Colors.white),
                ),
                MyDivider(width: size.width / 3),
              ],
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocialMediaUi2(
                  child: Image.asset(
                    "assets/ui_2/google.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                SocialMediaUi2(
                  child: Image.asset(
                    "assets/ui_2/facebook (1).png",
                    height: 30,
                    width: 30,
                  ),
                ),
                const SocialMediaUi2(
                  child: Icon(
                    Icons.apple,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
