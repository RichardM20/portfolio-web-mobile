import 'package:flutter/material.dart';
import 'package:personal_portfolio/controllers/button_animation_controller.dart';
import 'package:personal_portfolio/views/screens/welcome/widgets/buttons/socials/buttons_socials_content.dart';

class SocialsIconsContent extends StatelessWidget {
  SocialsIconsContent({super.key});
  final _controller = ButtonsAnimationController.to;
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
