import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:personal_portfolio/views/screens/welcome/widgets/socials_icon_list_content.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/about_me/about_me.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/about_me/name_text_content.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/about_me/profession_text_content.dart';

import 'experience_content.dart';

class PresentationTopContent extends StatelessWidget {
  const PresentationTopContent({super.key});

  @override
  Widget build(BuildContext context) {
    print(Get.width);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
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
                      const SizedBox(height: 20),
                      const Divider(),
                      const SizedBox(height: 5),
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
