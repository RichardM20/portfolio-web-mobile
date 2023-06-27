import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/profile_and_experience_controller.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/about_me/circle_profile/circle_decoration.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/about_me/circle_profile/skill_decoration.dart';

class CircleSkillsContent extends StatelessWidget {
  CircleSkillsContent({
    super.key,
  });
  final _controller = ProfileAndExperienceSkillsController.to;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedOpacity(
        opacity: _controller.isHover.value == true ? 1.0 : 0.0,
        curve: Curves.bounceOut,
        duration: const Duration(
          milliseconds: 250,
        ),
        child: CircleDecoration(
          child: Center(
            child: Stack(
              children: [
                const Positioned(
                  left: 0,
                  child: SkillDecoration(
                    skillName: 'Firebase',
                    backgroundColor: Colors.amber,
                  ),
                ),
                const Positioned(
                  right: 50,
                  bottom: 100,
                  child: SkillDecoration(
                    skillName: 'Bloc',
                    backgroundColor: Colors.blue,
                  ),
                ),
                const Positioned(
                  right: 50,
                  top: 30,
                  child: SkillDecoration(
                    skillName: 'Getx',
                    backgroundColor: Colors.blue,
                  ),
                ),
                const Positioned(
                  left: 120,
                  top: 40,
                  child: SkillDecoration(
                    skillName: 'Riverpod',
                    backgroundColor: Colors.blue,
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 130,
                  child: SkillDecoration(
                    skillName: 'GraphQL',
                    backgroundColor: Colors.pink[700]!,
                  ),
                ),
                const Positioned(
                  left: 200,
                  top: 120,
                  child: SkillDecoration(
                    skillName: 'GitHub',
                    backgroundColor: Colors.black,
                  ),
                ),
                const Positioned(
                  right: 60,
                  bottom: 40,
                  child: SkillDecoration(
                    skillName: 'Git',
                    backgroundColor: Colors.black,
                  ),
                ),
                const Positioned(
                  left: 100,
                  bottom: 90,
                  child: SkillDecoration(
                    skillName: 'GitLab',
                    backgroundColor: Colors.deepOrange,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
