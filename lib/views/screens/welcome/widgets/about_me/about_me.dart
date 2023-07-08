import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/text_content.dart';
import 'package:personal_portfolio/utils/typography_style.dart';

class AboutMeContent extends StatelessWidget {
  const AboutMeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      aboutMeText,
      style: paragraphTextStyle,
    );
  }
}
