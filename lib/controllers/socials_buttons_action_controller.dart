
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialsButtonsActionController extends GetxController {
  static SocialsButtonsActionController get to =>
      Get.find<SocialsButtonsActionController>();

  RxBool onHover = false.obs;
  late AnimationController animationController;
  List icons = [
    {
      'icon': 'download-icon.svg',
      'isHover': false.obs,
      'text': "Download CV",
      'color': const Color.fromARGB(255, 9, 73, 122),
    },
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
