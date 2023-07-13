import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/controllers/profile_and_experience_controller.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'socials_icon_list_content.dart';
import 'about_me/about_me.dart';
import 'about_me/name_text_content.dart';
import 'about_me/profession_text_content.dart';
import 'about_me/profile_and_experience.dart';

class PresentationTopContent extends StatelessWidget {
  PresentationTopContent({super.key});

  final _instanceSkills = Get.put(ProfileAndExperienceSkillsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.width < 800 ? Get.height * 0.75 : Get.height * 0.47,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width > 600 ? 50 : 10,
      ),
      child: ResponsiveRowColumn(
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        columnMainAxisAlignment: MainAxisAlignment.center,
        layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          const ResponsiveRowColumnItem(
            columnOrder: 2,
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NameTextContent(),
                  SizedBox(height: 20),
                  ProfessionTextContent(),
                  SizedBox(height: 10),
                  AboutMeContent(),
                  SizedBox(height: 20),
                  SizedBox(height: 5),
                  SocialsIconsContent(),
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            columnOrder: 1,
            child: Flexible(
              child: ProfileAndExperienceSkillContent(),
            ),
          )
        ],
      ),
    );
  }
}
