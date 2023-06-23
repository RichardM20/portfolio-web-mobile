import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonsAnimationController extends GetxController {
  static ButtonsAnimationController get to =>
      Get.find<ButtonsAnimationController>();

  RxBool onHover = false.obs;
  late AnimationController animationController;
  List icons = [
    {
      'icon': 'github-icon.svg',
      'isHover': false.obs,
      'text': "View to Github",
      'color': Colors.black,
    },
    {
      'icon': 'linkedin-icon.svg',
      'isHover': false.obs,
      'text': "View to Linkedin",
      'color': Colors.blueGrey,
    },
    {
      'icon': 'whatsapp-icon.svg',
      'isHover': false.obs,
      'text': "Contact for whatsapp",
      'color': Colors.green,
    },
  ];
}
