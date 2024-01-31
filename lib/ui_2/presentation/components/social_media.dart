import 'package:flutter/material.dart';

class SocialMediaUi2 extends StatelessWidget {
  final Widget child;
  const SocialMediaUi2({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(width: 2, color: Colors.grey.shade900)),
      child: child,
    );
  }
}