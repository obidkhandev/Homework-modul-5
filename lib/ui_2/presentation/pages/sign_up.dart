import 'package:flutter/material.dart';
import 'package:modul_5/ui_2/presentation/components/my_button.dart';
import 'package:modul_5/ui_2/presentation/components/my_divider.dart';
import 'package:modul_5/ui_2/presentation/components/my_rich_text.dart';
import 'package:modul_5/ui_2/presentation/components/social_media.dart';
import 'package:modul_5/ui_2/presentation/components/text_field_email.dart';
import 'package:modul_5/ui_2/presentation/components/text_field_password.dart';
import 'package:modul_5/ui_2/presentation/components/backround.dart';

class SingUpUi2 extends StatefulWidget {
  final Function() onTap;
  const SingUpUi2({super.key, required this.onTap});

  @override
  State<SingUpUi2> createState() => _SignUpUi2State();
}

class _SignUpUi2State extends State<SingUpUi2> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final numberController = TextEditingController();

  void singUp() {}

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
                      fontSize: 16,),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Create a new account",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              "Please put your information below to create a new account",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            EmailTextFeild(textController: nameController,text: "Name",),
            const SizedBox(height: 10),
            EmailTextFeild(textController: emailController),
            EmailTextFeild(textController: numberController,text: "Phone number",),
            const SizedBox(height: 10),
            PasswordTextField(passwordController: passwordController),
            
            const SizedBox(height: 15),
            const MyButtonUi2(text: "Login"),
            const SizedBox(height: 10),
            MyRichTextUi2(
              firstText: "Already have an ",
              secondText: "Login",
              onTap: widget.onTap,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyDivider(width: size.width / 3),
                const Text(
                  "Or Sign up with",
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
