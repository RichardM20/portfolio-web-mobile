import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/utils/typography_family.dart';

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
          color: isHover.value
              ? Colors.white
              : const Color.fromARGB(255, 9, 73, 122),
        ),
      ),
    );
  }
}
