import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/views/widgets/text/reactive_text.dart';
import 'package:personal_portfolio/views/widgets/theme/theme_app.dart';

class AboutMeContent extends StatelessWidget {
  const AboutMeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactiveText(
      "I have extensive knowledge in this framework, I love having challenges that are almost impossible to solve to overcome them day by day, I like to give my opinion and give my point of view in any circumstance, if I get stuck in a solution, it is trying to get away from the problem, take a breath and come back stronger."
          .obs,
      style: TextStyle(
        overflow: TextOverflow.clip,
        fontSize: FontStyles.paragraphSize.value,
        fontFamily: FontStyles.lightStyle,
      ),
    );
  }
}
