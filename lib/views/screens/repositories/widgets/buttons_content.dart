import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:personal_portfolio/utils/colors_app.dart';
import 'package:personal_portfolio/utils/typography.dart';

class ActionButtonProject extends StatelessWidget {
  const ActionButtonProject(
      {super.key, required this.textButton, this.onTap, required this.isHover});
  final String textButton;
  final Function()? onTap;
  final RxBool isHover;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => isHover.value = true,
      onExit: (event) => isHover.value = false,
      child: GestureDetector(
        onTap: onTap,
        child: Obx(
          () => Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: isHover.value ? primaryColor30 : primaryColor,
              borderRadius: BorderRadius.circular(3),
            ),
            child: Text(
              textButton,
              style:
                  isHover.value ? buttonsSecondaryTextstyle : buttonsTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
