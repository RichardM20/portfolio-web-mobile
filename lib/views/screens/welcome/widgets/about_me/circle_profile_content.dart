import 'package:flutter/material.dart';

class CircleProfileImageContent extends StatelessWidget {
  const CircleProfileImageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 9, 73, 122),
        shape: BoxShape.circle,
      ),
    );
  }
}
