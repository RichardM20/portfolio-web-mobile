import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../socials_icon_list_content.dart';
import 'about_me.dart';
import 'name_text_content.dart';
import 'profession_text_content.dart';
import 'profile_and_experience.dart';

class PresentationTopContent extends StatelessWidget {
  const PresentationTopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ResponsiveRowColumnItem(
            columnOrder: 2,
            child: Expanded(
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
                  const SizedBox(height: 5),
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
