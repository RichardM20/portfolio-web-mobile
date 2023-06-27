import 'package:flutter/material.dart';
import 'package:personal_portfolio/controllers/profile_and_experience_controller.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/about_me/circle_profile/circle_decoration.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/about_me/circle_profile/skills_content.dart';

class CircleProfileAndSkillsContent extends StatelessWidget {
  const CircleProfileAndSkillsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleDecoration(
          child: Image.asset(
            'assets/images/profile_richard_circle.png',
            fit: BoxFit.cover,
          ),
        ),
        CircleSkillsContent(),
      ],
    );
  }
}
