import 'package:flutter/material.dart';
import 'package:personal_portfolio/controllers/socials_buttons_action_controller.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/socials_buttons_action/buttons_socials_content.dart';

class SocialsIconsContent extends StatelessWidget {
  SocialsIconsContent({super.key});
  final _controller = SocialsButtonsActionController.to;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        _controller.icons.length,
        (index) => SocialsButtons(
          isHover: _controller.icons[index]['isHover'],
          iconName: _controller.icons[index]['icon'],
          text: _controller.icons[index]['text'],
          background: _controller.icons[index]['color'],
        ),
      ),
    );
  }
}
