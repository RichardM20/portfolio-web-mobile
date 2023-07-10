import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/utils/typography_family.dart';
import 'package:personal_portfolio/utils/colors_app.dart';

class ActionButtonText extends StatelessWidget {
  const ActionButtonText(
      {super.key, required this.name, required this.isHover});
  final String name;
  final RxBool isHover;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Text(
        name,
        style: TextStyle(
          fontFamily: semiBold,
          fontSize: 10,
          color: isHover.value ? whiteColor : primaryColor,
        ),
      ),
    );
  }
}
