import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/utils/text_content.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class ExperienceTestimonyText extends StatelessWidget {
  const ExperienceTestimonyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width < 600 ? Get.width * 0.8 : Get.width * 0.35,
        padding: const EdgeInsets.only(bottom: 10),
        child: const Text(
          testimonialsText,
          textAlign: TextAlign.center,
          style: paragraphTextStyle,
        ),
      ),
    );
  }
}
