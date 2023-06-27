
import 'package:flutter/material.dart';
import 'package:personal_portfolio/controllers/profile_and_experience_controller.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/about_me/experience/experience_content.dart';

import 'circle_profile/circle_profile_content.dart';

class ProfileAndExperienceSkillContent extends StatelessWidget {
  ProfileAndExperienceSkillContent({super.key});
  final _controller = ProfileAndExperienceSkillsController.to;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 400,
      child: MouseRegion(
        onEnter: (event) {
          _controller.isHover.value = true;
        },
        onExit: (event) {
          _controller.isHover.value = false;
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const Center(
              child: CircleProfileAndSkillsContent(),
            ),
            Positioned(
              bottom: 130,
              left: -50,
              child: ExperienceAndSkillContent(),
            ),
          ],
        ),
      ),
    );
  }
}
