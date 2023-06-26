import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:personal_portfolio/views/screens/welcome/widgets/socials_icon_list_content.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/top/about_me.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/top/name_text_content.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/top/profession_text_content.dart';

import 'experience_content.dart';

class PresentationTopContent extends StatelessWidget {
  const PresentationTopContent({super.key});

  @override
  Widget build(BuildContext context) {
    print(Get.width);
    return SizedBox(
      width: Get.width,
      child: MediaQuery.of(context).size.width > 900
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const NameTextContent(),
                      const SizedBox(height: 20),
                      const ProfessionTextContent(),
                      const SizedBox(height: 10),
                      const AboutMeContent(),
                      const SizedBox(height: 30),
                      SocialsIconsContent(),
                    ],
                  ),
                ),
                const Flexible(
                  child: ExperienceContent(),
                )
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Flexible(
                  child: ExperienceContent(),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const NameTextContent(),
                      const SizedBox(height: 20),
                      const ProfessionTextContent(),
                      const SizedBox(height: 10),
                      const AboutMeContent(),
                      const SizedBox(height: 30),
                      SocialsIconsContent(),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
