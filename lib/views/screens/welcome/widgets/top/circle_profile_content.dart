import 'package:flutter/material.dart';

class CircleProfileImageContent extends StatelessWidget {
  const CircleProfileImageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
    );
  }
}
