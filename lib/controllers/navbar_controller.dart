import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController {
  static NavbarController get to => Get.find<NavbarController>();
  //

  PageController pageController = PageController(
    initialPage: 0,
  );
  late AnimationController animationController;
  late Animation<double> animation;
  final onHover = false.obs;
  //
  void animateButton() {
    animationController.forward(from: 0.0);
  }
}
