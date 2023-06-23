import 'package:flutter/material.dart';

import 'package:personal_portfolio/views/screens/welcome/widgets/socials_icon_list_content.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/top/circle_profile_content.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/top/name_text_content.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/top/profession_text_content.dart';

class PresentationTopContent extends StatelessWidget {
  const PresentationTopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NameTextContent(),
              const SizedBox(height: 35),
              const ProfessionTextContent(),
              const SizedBox(height: 35),
              SocialsIconsContent(),
            ],
          ),
          const CircleProfileImageContent(),
        ],
      ),
    );
  }
}
