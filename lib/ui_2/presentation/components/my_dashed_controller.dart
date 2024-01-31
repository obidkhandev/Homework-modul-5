import 'package:another_dashed_container/another_dashed_container.dart';
import 'package:flutter/material.dart';

class MyDashedContainer extends StatefulWidget {
  const MyDashedContainer({super.key});

  @override
  State<MyDashedContainer> createState() => _MyDashedContainerState();
}

class _MyDashedContainerState extends State<MyDashedContainer> {
  @override
  Widget build(BuildContext context) {
    return DashedContainer(
      dashColor: Colors.white,
      boxShape: BoxShape.circle,
      dashedLength: 3.0,
      blankLength: 4.0,
      strokeWidth: 2.0,
      child: Container(
        height: 20,
        width: 20,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
