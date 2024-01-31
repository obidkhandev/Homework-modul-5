import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final double width;
  const MyDivider({super.key, this.width = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: width,
      color: Colors.grey.shade800,
    );
  }
}
