import 'package:flutter/material.dart';

class BackgroundWelcomePageUi2 extends StatelessWidget {
  final Widget child;
  const BackgroundWelcomePageUi2({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: size.height * 0.06),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(0, 6, 28, 1),
        image: DecorationImage(
          // invertColors: true,
          scale: 1.8,
          alignment: Alignment.topRight,
          image: AssetImage("assets/ui_2/Vector (1).png"),),
      ),
      child: Stack(
        children: [
          child,
        ],
      ),
    );
  }
}
