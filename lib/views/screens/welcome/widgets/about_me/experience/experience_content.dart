import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/profile_and_experience_controller.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

import 'experience_content_decoration.dart';

class ExperienceAndSkillContent extends StatelessWidget {
  ExperienceAndSkillContent({super.key});
  final _controller = ProfileAndExperienceSkillsController.to;
  @override
  Widget build(BuildContext context) {
    return ExperienceContentDecoration(
      widget: Obx(
        () => Align(
          alignment: Alignment.centerLeft,
          child: Text(
            _controller.isHover.value == true
                ? "Skills"
                : "2+ \nYears Experience",
            textAlign: TextAlign.left,
            style: smallParagraphSecondaryStyle,
          ),
        ),
      ),
    );
  }
}
