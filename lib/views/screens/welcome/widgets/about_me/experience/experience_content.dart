import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/profile_and_experience_controller.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

class ExperienceAndSkillContent extends StatelessWidget {
  ExperienceAndSkillContent({super.key});
  final _controller = ProfileAndExperienceSkillsController.to;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 69,
        width: 130,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 9, 38, 60),
            borderRadius: BorderRadius.circular(
              8,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12,
                offset: Offset(0.0, 6),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _controller.isHover.value == true
                  ? "Skills"
                  : "2+ \nYears Experience",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: FontStyles.boldStyle,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
