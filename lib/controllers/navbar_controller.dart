import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:personal_portfolio/utils/list_action_navbar.dart';

class NavbarController extends GetxController {
  static NavbarController get to => Get.find<NavbarController>();
  NavbarUtils utils = NavbarUtils();
  late AnimationController animationController;
  late Animation<double> animation;
  final onHover = false.obs;
  void animateButton() {
    animationController.forward(from: 0.0);
  }
}
