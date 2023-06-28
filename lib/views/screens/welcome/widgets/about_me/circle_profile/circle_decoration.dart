import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/profile_and_experience_controller.dart';

class CircleDecoration extends StatelessWidget {
  CircleDecoration({
    super.key,
    required this.child,
  });
  final _controller = ProfileAndExperienceSkillsController.to;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: _controller.isHover.value == false
                ? [
                    const Color.fromARGB(255, 9, 73, 122),
                    const Color.fromARGB(255, 0, 31, 64),
                  ]
                : [
                    const Color.fromARGB(255, 11, 97, 163),
                    const Color.fromARGB(255, 0, 47, 98),
                  ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(2, 0.0),
            )
          ],
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}
