import 'package:flutter/material.dart';
import 'package:personal_portfolio/controllers/socials_buttons_action_controller.dart';
import 'package:personal_portfolio/utils/socials_icon_list.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/socials_buttons_action/buttons_socials_content.dart';

class SocialsIconsContent extends StatelessWidget {
  const SocialsIconsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        socialsIcons.length,
        (index) => SocialsButtons(
          isHover: socialsIcons[index]['isHover'],
          iconName: socialsIcons[index]['icon'],
          text: socialsIcons[index]['text'],
          background: socialsIcons[index]['color'],
          url: socialsIcons[index]['url'],
        ),
      ),
    );
  }
}
