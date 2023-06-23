import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/controllers/button_animation_controller.dart';

class SocialIconContent extends StatelessWidget {
  SocialIconContent({super.key, required this.iconName});
  final String iconName;
  final controller = ButtonsAnimationController.to;
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: controller.onHover.value ? 2.0 : 0.0)
          .animate(controller.animationController),
      child: SvgPicture.asset(
        'assets/icons/$iconName',
        color: Colors.white,
      ),
    );
  }
}
