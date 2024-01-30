import 'package:flutter/material.dart';
import 'package:modul_5/ui_1/presentation/components/my_button.dart';
import 'package:modul_5/ui_1/presentation/components/my_text_field.dart';

class RegisterPageUi1 extends StatefulWidget {
  const RegisterPageUi1({super.key});

  @override
  State<RegisterPageUi1> createState() => _RegisterPageUi1State();
}

class _RegisterPageUi1State extends State<RegisterPageUi1> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  //sing up user
  void singUp(){}

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
                    const SizedBox(height: 10,),
                  MyTextField(
                    textEditingController: confirmPasswordController,
                    hintText: "Confirm password",
                    obscureText: true,
                  ),
                    const SizedBox(height: 20),      
                  // sign up button
                  MyButtonUi1(text: "Sign Up",press: singUp),
                        
                  // not a member? register now
                  const SizedBox(height: 40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already a member?"),
                      SizedBox(width: 5),
                      Text("Login now",style: TextStyle(fontWeight: FontWeight.bold),),
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
