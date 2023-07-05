import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController {
  static NavbarController get to => Get.find<NavbarController>();
  //

  PageController pageController = PageController(
    initialPage: 0,
  );
}
