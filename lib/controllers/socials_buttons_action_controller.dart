import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialsButtonsActionController extends GetxController {
  static SocialsButtonsActionController get to =>
      Get.find<SocialsButtonsActionController>();
  RxBool onHover = false.obs;
  late AnimationController animationController;
}
