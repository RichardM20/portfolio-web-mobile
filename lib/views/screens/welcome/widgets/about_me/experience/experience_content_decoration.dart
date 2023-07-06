import 'package:flutter/material.dart';

class ExperienceContentDecoration extends StatelessWidget {
  const ExperienceContentDecoration({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 9, 38, 60),
        borderRadius: BorderRadius.circular(3),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0.0, 2),
          )
        ],
      ),
      child: widget,
    );
  }
}
