import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

class SocialIconContent extends StatelessWidget {
  const SocialIconContent({
    super.key,
    required this.iconName,
    required this.animationController,
    required this.onHover,
  });
  final String iconName;
  final AnimationController animationController;
  final RxBool onHover;
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: onHover.value ? 2.0 : 0.0)
          .animate(animationController),
      child: SvgPicture.asset(
        'assets/icons/$iconName',
        width: 30,
        color: whiteColor,
      ),
    );
  }
}
